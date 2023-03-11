package miage.ter.trefle.model;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;


/**
 * Cette classe représente une connexion à la base de données. Elle encapsule
 * les méthodes permettant de lire et écrire les données Elle communique avec le
 * monde extérieur en utilisant des objets Java standard (int, String, …) ou des
 * classes du modèle (Point).
 * 
 * Les objets de cette classe seront stockés dans la session HTTP. Chaque client
 * du serveur Web aura donc une connection à la base de donnée le temps de sa
 * session.
 * 
 * La classe est Serializable, elle peut être sauvegardée sur le disque si le
 * serveur Web veut mettre la session en cache. Évidemment la connection doit
 * alors être.
 * 
 * La classe est AutoClosable, sa méthode close() est appelée lorsque java n'a
 * plus besoin de l'objet, permettant de fermer la connexion à la BD proprement.
 * 
 * La classe implémente HttpSessionBindingListener pour pouvoir fermer la
 * connexion lorsque les objets sont retirés de la session HTTP ou que celle ci
 * est détruite.
 * 
 * Cette classe doit être renommée pour avoir un nom plus parlant (MagasinDB,
 * StoreDB, …)
 * 
 * Les premières méthodes privées doivent rester telle qu'elle, les méthodes
 * faisant des SELECT/UPDATE/INSERT doivent évidemment être adaptées.
 */

public class ExampleDB implements Serializable, AutoCloseable, HttpSessionBindingListener {

    // Si l'objet est sauvé sur le disque, cette attribut ne sera pas sauvé et mis à
    // null.
    private transient Connection cnx;
    private String host;
    private String port;
    private String name;
    private String user;
    private String pass;

    // Appelée lorsque l'objet va être mis sur le disque
    private void writeObject(ObjectOutputStream oos) throws IOException {
        close();
        oos.defaultWriteObject(); // Calling the default serialization logic
    }

    /**
     * Crée une connexion si elle n'est pas déjà ouverte
     */

    private Connection getConnection() throws SQLException {
        if (cnx == null || cnx.isClosed()) {
            cnx = DriverManager.getConnection("jdbc:postgresql://" + host + ":" + port + "/" + name, user, pass);
        }
        return cnx;
    }

    /**
     * Appelée lorsqu'on retire cet objet de la session.
     */
    @Override
    public void valueUnbound(HttpSessionBindingEvent event) {
        close();
    }

    /**
     * Permet de fermer explicitement la connexion
     */
    public void close() {
        if (cnx != null) {
            try {
                cnx.close();
            } catch (SQLException e) {
                // déjà fermé ?
            }
            cnx = null;
        }
    }

    ///// PARTIE À MODIFIER ///////

    public ExampleDB(String host, String port, String name, String user, String pass) {
        // Renommer le constructeur et
        // initialiser les autres champs si besoin.
        this.host = host;
        this.port = port;
        this.name = name;
        this.user = user;
        this.pass = pass;
    }

    public List<Product> productsQuery(String endQueryParameters) throws SQLException {
        List<Product> products = new ArrayList<>();
        try (Statement stmt = getConnection().createStatement()) {
            ResultSet res = stmt.executeQuery("SELECT * FROM getProducts() " + endQueryParameters);
            addMultipleProducts(products, res);
        }
        return products;
    }

    /**
     * @param pseudo   : le login
     * @param password : le mot de passe en clair
     * @return un objet CLient ou null si l'authentification a échoué
     */
    public Client authenticate(String pseudo, String password) throws SQLException {
        Client client = null;
        try (Statement stmt = getConnection().createStatement()) {
            ResultSet res = stmt.executeQuery("SELECT * FROM checkPassword('" + pseudo + "', '" + password + "')");
            if (res.next()) {
                boolean result = (Boolean) res.getObject(1);
                client = result ? new Client(pseudo, password) : null;
            }
        }
        return client;
    }

    public Product selectProduct(int productId) throws SQLException {
        Product product = null;
        try (Statement stmt = getConnection().createStatement()) {
            ResultSet res = stmt.executeQuery("SELECT * FROM getProduct(" + productId + ")");
            if (res.next()) {
                product = (createProduct(
                        res.getInt("idproduct"),
                        res.getString("support"),
                        res.getFloat("price"),
                        res.getInt("quantity"),
                        res.getInt("idmovie"),
                        res.getString("title"),
                        res.getDate("release"),
                        res.getInt("runtime"),
                        res.getString("original_language"),
                        res.getString("poster_path"),
                        res.getString("overview"),
                        res.getInt("iddirector"),
                        res.getString("name")
                ));
            }
        }
        return product;
    }

    public List<Product> sameMovie(int idP) throws SQLException {
        List<Product> products = new ArrayList<>();
        try (Statement stmt = getConnection().createStatement()) {
            ResultSet res = stmt.executeQuery("SELECT * FROM getProductsMovie(" + idP + ")");
            addMultipleProducts(products, res);
        }
        return products;
    }

    public List<Product> sameDirector(int idP) throws SQLException {
        List<Product> products = new ArrayList<>();
        try (Statement stmt = getConnection().createStatement()) {
            ResultSet res = stmt.executeQuery("SELECT * FROM getProductsDir(" + idP + ")");
            addMultipleProducts(products, res);
        }
        return products;
    }

    public List<Product> sameYear(int idP) throws SQLException {
        List<Product> products = new ArrayList<>();
        try (Statement stmt = getConnection().createStatement()) {
            ResultSet res = stmt.executeQuery("SELECT * FROM getProductsYear('" + idP + "')");
            addMultipleProducts(products, res);
        }
        return products;
    }

    public List<Product> searchProducts(String searchValue, String endQueryParameters) throws SQLException {
        List<Product> foundProducts = new ArrayList<>();

        try (Statement stmt = getConnection().createStatement()) {
            ResultSet res = stmt.executeQuery("SELECT * FROM researchProducts('" + searchValue + "') " + endQueryParameters);
            addMultipleProducts(foundProducts, res);
        }
        return foundProducts;
    }

    public Product createProduct(int idProduct, String support, float price, int quantity, int idMovie, String title, Date release, int runtime, String originalLanguage, String posterPath, String overview, int idDirector, String name) {
        return new Product(idProduct, support, price, quantity, idMovie, title, release, runtime, originalLanguage, posterPath, overview, idDirector, name);
    }

    private void addMultipleProducts(List<Product> products, ResultSet res) throws SQLException {
        while (res.next()) {
            products.add(createProduct(
                    res.getInt("idproduct"),
                    res.getString("support"),
                    res.getFloat("price"),
                    res.getInt("quantity"),
                    res.getInt("idmovie"),
                    res.getString("title"),
                    res.getDate("release"),
                    res.getInt("runtime"),
                    res.getString("original_language"),
                    res.getString("poster_path"),
                    res.getString("overview"),
                    res.getInt("iddirector"),
                    res.getString("name")
            ));
        }
    }


    public List<CartProduct> getCart(String pseudo) throws SQLException{
        List<CartProduct> cart = new ArrayList<>();
        try (Statement stmt = getConnection().createStatement()) {
            ResultSet res = stmt.executeQuery("SELECT * FROM getCart('" + pseudo +"')");
            while (res.next()) {
                cart.add(new CartProduct(
                        res.getInt("idproduct"),
                        res.getInt("quantity"),
                        res.getInt("totalprice"),
                        res.getString("title"),
                        res.getString("poster_path"),
                        res.getString("support")
                ));
            }
        }
        return cart;
    }

    public boolean adToCart(String pseudo, int productId, int quantity) throws SQLException {
        boolean insertResult = false;
        try (Statement stmt = getConnection().createStatement()) {
            System.out.println("SELECT * FROM addToCart('" + pseudo +"','" + productId + "','" + quantity + "')");
            ResultSet res = stmt.executeQuery("SELECT * FROM addToCart('" + pseudo +"','" + productId + "','" + quantity + "')");
            if (res.next()) {
                 insertResult = (Boolean) res.getObject(1);
            }
        }
        return insertResult;
    }
}
