package miage.ter.trefle.controller;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import miage.ter.trefle.model.CartProduct;
import miage.ter.trefle.model.ExampleDB;

@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pseudo = Utils.stringParameter(req, "name");
        // squantity a utiliser si on décide de laisser la possibilité a l'utilisateur de gerer les stocks dans le panier, sinon à supprimer plus tard
        String squantity = Utils.stringParameter(req, "quantity");
        String sProductId = Utils.stringParameter(req, "productId");
        ExampleDB db = Utils.getDB(req);
        List<CartProduct> cart = new ArrayList<>();

        //Cas 1 : insérer un produit au panier correposndant
        if (! sProductId.isEmpty()) {
            int productId = Integer.parseInt(sProductId);
            try {
                int quantity = !squantity.isEmpty() ? Integer.parseInt(squantity) : 1;
                boolean insertResult = db.adToCart(pseudo,productId,quantity);
                if (!insertResult) {
                    req.setAttribute("failedInsert", "Ce produit n'a pas pu être inséré");
                } else {
                    resp.sendRedirect("MainPageServlet");
                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
            //Cas 2: consulter le panier correspondant
        } else {
            try {
                cart = db.getCart(pseudo);
                req.setAttribute("cartProducts", cart);
                req.getRequestDispatcher("cart.jsp").forward(req, resp);
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
    }

}