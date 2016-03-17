package servletclass;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utils.PDB;

public class PowerModifyOkServlet extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		PDB db = new PDB();
		String id = request.getParameter("id").toString();
	    String powername = request.getParameter("powername").toString();
	    String powerurl = request.getParameter("powerurl").toString();
	    String state = request.getParameter("state").toString();
		db.update("update power set powername=?,powerurl=?,state=? where id=?",new Object[]{powername,powerurl,state,id});
		request.getRequestDispatcher("PowerServlet").forward(request, response);
	}
}
