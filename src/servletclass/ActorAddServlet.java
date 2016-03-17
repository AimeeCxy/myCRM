package servletclass;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utils.PDB;

public class ActorAddServlet extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		 	request.setCharacterEncoding("UTF-8");
		  	String actorname = null;
		  	actorname = request.getParameter("actorname").toString();
		  	String useful = null;
		  	useful = request.getParameter("useful").toString();
		  	PDB db = new PDB();
		  	db.update("insert into actor (actorname,useful)values(?,?)",new Object[]{actorname,useful});
		 	request.getRequestDispatcher("ActorServlet").forward(request, response);
		   }
}
