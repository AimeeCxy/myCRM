package servletclass;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utils.PDB;

public class UserDeleteOkServlet extends HttpServlet{
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PDB db = new PDB();
	    db.update("update user set state='已删除' where id=?", new String[]{request.getParameter("id").toString()});
	    request.getRequestDispatcher("UserServlet").forward(request, response);
	}
}
