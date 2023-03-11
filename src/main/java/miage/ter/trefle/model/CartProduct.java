package miage.ter.trefle.model;

public class CartProduct {
    private final int idProduct;
    private final int productQuantities;
    private final int totalPrice;
    private final String title;
    private final String posterPath;
    private final String support;

    public CartProduct(int idProduct,
                       int productQuantities,
                       int totalPrice,
                       String title,
                       String posterPath,
                       String support) {
        this.idProduct = idProduct;
        this.productQuantities = productQuantities;
        this.title = title;
        this.totalPrice = totalPrice;
        this.posterPath = posterPath;
        this.support = support;
    }

    public int getIdProduct() {
        return idProduct;
    }
    public int getProductQuantities() {
        return productQuantities;
    }
    public int getTotalPrice() {
        return totalPrice;
    }
    public String getTitle() {return title;}
    public String getPosterPath() {return posterPath;}
    public String getSupport() {return support;}
}
