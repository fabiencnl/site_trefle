package miage.ter.trefle.controller;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import miage.ter.trefle.model.Client;
import miage.ter.trefle.model.ExampleDB;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            ExampleDB db = Utils.getDB(req);
            String pseudo = Utils.stringParameter(req, "pseudo");
            String password = Utils.stringParameter(req, "password");
            Client client = db.authenticate(pseudo, password) ;

            if (client !=null) {
                req.getSession().setAttribute("client", client);
                resp.sendRedirect("MainPageServlet");
            } else {
                resp.sendRedirect("MainPageServlet?result=invalid");
            }

        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }

}