package servletclass;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utils.PDB;

public class PowerAddServlet extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		 	request.setCharacterEncoding("UTF-8");
		  	String powername = null;
		  	powername = request.getParameter("powername").toString();
		  	String powerurl = null;
		  	powerurl = request.getParameter("powerurl").toString();
		  	String state = null;
		  	state = request.getParameter("state").toString();
		  	PDB db = new PDB();
		  	db.update("insert into power (powername,powerurl,state)values(?,?,?)",new Object[]{powername,powerurl,state});
		 	request.getRequestDispatcher("PowerServlet").forward(request, response);
		   }
}
