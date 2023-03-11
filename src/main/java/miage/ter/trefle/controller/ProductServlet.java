package miage.ter.trefle.controller;

import miage.ter.trefle.model.ExampleDB;
import miage.ter.trefle.model.Movie;
import miage.ter.trefle.model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.List;

@WebServlet("/ProductServlet")
public class ProductServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try{
            int productId = Integer.parseInt(Utils.stringParameter(req, "productId"));

            ExampleDB db = Utils.getDB(req);

            Product selectedProduct = null;
            List<Product> sameMovie;
            List<Product> sameDirector;
            List<Product> sameYear;

            selectedProduct = db.selectProduct(productId);
            sameMovie = db.sameMovie(productId);
            sameDirector = db.sameDirector(productId);
            sameYear = db.sameYear(productId);

            req.setAttribute("selectedProduct", selectedProduct);
            req.setAttribute("sameMovie", sameMovie);
            req.setAttribute("sameDirector", sameDirector);
            req.setAttribute("sameYear", sameYear);

            req.getRequestDispatcher("product.jsp").forward(req, resp);

        }catch (SQLException e) {
            throw new ServletException(e);
        }



    }

}
