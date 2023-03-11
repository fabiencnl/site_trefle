package miage.ter.trefle.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import miage.ter.trefle.model.ExampleDB;
import miage.ter.trefle.model.Product;

@WebServlet("/MainPageServlet")
public class MainPageServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            ExampleDB db = Utils.getDB(req);
            List<Product> products;
            int from =0;
            try{
                from = Integer.parseInt(Utils.stringParameter(req, "from"));
                from = Math.max(from, 0);
            }catch(NumberFormatException ignored){}

            String endQueryParameters =  "OFFSET " + from + " LIMIT 16";
            String searchValue = Utils.stringParameter(req, "searchValue");
            if (!searchValue.isEmpty()) {
                searchValue = searchValue.trim();
                products = db.searchProducts(searchValue, endQueryParameters);
            } else {
                products = db.productsQuery(endQueryParameters);
            }
            req.setAttribute("products", products);
            req.setAttribute("from", from);
            req.setAttribute("searchValue", searchValue);
            req.getRequestDispatcher("main_page.jsp").forward(req, resp);

        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }

}
