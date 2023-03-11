package miage.ter.trefle.model;

import java.util.Date;

public class Product {
    private final int idProduct;
    private final String support;
    private final float price;
    private int quantity;


    private final int idMovie;
    private final String title;
    private final Date release;
    private final int runtime;
    private final String originalLanguage;
    private final String posterPath;
    private final String overview;

    private final int idDirector;
    private final String directorName;


    public Product(int idProduct,
                   String support,
                   float price,
                   int quantity,
                   int idMovie,
                   String title,
                   Date release,
                   int runtime,
                   String originalLanguage,
                   String posterPath,
                   String overview,
                   int idDirector,
                   String directorName
    )  {
        this.idProduct = idProduct;
        this.support = support;
        this.price = price;
        this.quantity = quantity;

        this.idMovie = idMovie;
        this.title = title;
        this.release = release;
        this.runtime = runtime;
        this.originalLanguage = originalLanguage;
        this.posterPath = posterPath;
        this.overview = overview;

        this.idDirector = idDirector;
        this.directorName = directorName;
    }

    public int getIdProduct() {
        return idProduct;
    }
    public String getSupport() {
        return support;
    }
    public float getPrice() { return price; }
    public int getQuantity() {
        return quantity;
    }

    public int getIdMovie() {
        return idMovie;
    }
    public String getTitle() { return title; }
    public Date getRelease() { return release; }
    public int getRuntime() {
        return runtime;
    }
    public String getOriginalLanguage() {
        return originalLanguage;
    }
    public String getOverview() { return overview; }
    public String getPosterPath() {
        return posterPath;
    }

    public int getIdDirector() {
        return idDirector;
    }
    public String getDirectorName() {
        return directorName;
    }
}
