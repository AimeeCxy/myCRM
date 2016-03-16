package servletclass;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utils.PDB;

public class PowerDeleteOkServlet extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PDB db = new PDB();
	    db.update("update power set state='已停用' where id=?", new String[]{request.getParameter("id").toString()});
	    request.getRequestDispatcher("PowerServlet").forward(request, response);
	}
}
