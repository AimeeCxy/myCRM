package servletclass;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utils.PDB;

public class UserPlusServlet extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PDB db = new PDB();
	  	ArrayList<HashMap<String,Object>> list = db.query("select * from user where id=?", new String[]{request.getParameter("id").toString()});
	  	HashMap<String,Object> map = list.get(0);
	  	request.setAttribute("map",map);
		request.getRequestDispatcher("userplus.jsp").forward(request, response);
	}

}
