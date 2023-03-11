package miage.ter.trefle.controller;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import miage.ter.trefle.model.ExampleDB;

/**
 * Petite classe utilitaire pour gérer les sessions et les paramètres de requête
 * HTTP
 */

public final class Utils {
	private Utils() {
	}

	/**
	 * Lit un paramètre dans la requête et renvoie la chaîne vide plutôt que null si
	 * le paramètre est absent.
	 */
	public static String stringParameter(HttpServletRequest req, String param) {
		String s = req.getParameter(param);
		return s == null ? "" : s;
	}

	/**
	 * Renvoie une instance d'ExampleDB stocké dans la session et la crée en cas de
	 * besoin.
	 */
	public static ExampleDB getDB(HttpServletRequest req) {
		ExampleDB db = (ExampleDB) req.getSession().getAttribute("db");
		if (db == null) {
			ServletContext ctx = req.getServletContext();
			db = new ExampleDB((String) ctx.getAttribute("db.host"),
							   (String) ctx.getAttribute("db.port"),
							   (String) ctx.getAttribute("db.name"),
							   (String) ctx.getAttribute("db.user"),
							   (String) ctx.getAttribute("db.pass")

			);
			req.getSession().setAttribute("db", db);
		}
		return db;
	}

}
