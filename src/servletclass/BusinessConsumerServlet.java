package servletclass;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utils.PDB;

public class BusinessConsumerServlet extends HttpServlet {

	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PDB db = new PDB();
		ArrayList<HashMap<String,Object>> li = db.query("select * from user where usernumber=?", new String[]{request.getParameter("userId").toString()});
		String po1 = li.get(0).get("position").toString();
		String po = po1.substring(0, 3).concat("%");
	  	ArrayList<HashMap<String,Object>> list = db.query("select * from business where usernumber in (select usernumber from user where position like ?&& position!=?)", new String[]{po,po1});
	  	request.setAttribute("list",list);
		request.getRequestDispatcher("businessconsumer.jsp").forward(request, response);
	}

}
