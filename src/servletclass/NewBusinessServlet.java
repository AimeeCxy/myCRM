package servletclass;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utils.PDB;

public class NewBusinessServlet extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		 	request.setCharacterEncoding("UTF-8");
		 	String usernumber = null;
		 	usernumber = request.getParameter("usernumber").toString();
		 	System.out.println(usernumber+"<--这是usernumber");
		 	String date = null;
		  	date = request.getParameter("date").toString();
		  	String consumer = null;
		  	consumer = request.getParameter("consumer").toString();
		  	String businesstext = null;
		  	businesstext = request.getParameter("businesstext").toString();
		    String tel = request.getParameter("tel").toString();
		  	
		  	PDB db = new PDB();
		  	ArrayList<HashMap<String,Object>> list = db.query("select history from business where usernumber=?", new String[]{usernumber});
		  	HashMap<String,Object> map = list.get(0);
		  	String old = map.get("history").toString();
		  	String newhistory = old.concat("，"+date+"，"+consumer+"，"+businesstext);
		  	db.update("update business set history=? where usernumber=?",new Object[]{newhistory,usernumber});
		  	
		  	ArrayList<HashMap<String,Object>> list2 = db.query("select consumer from business where usernumber=?", new String[]{usernumber});
		  	HashMap<String,Object> map2 = list2.get(0);
		  	String old2 = map.get("consumer").toString();
		  	String newconsumer = old2.concat(consumer+"，"+tel);
		  	db.update("update business set consumer=? where usernumber=?",new Object[]{newconsumer,usernumber});
		 	
		  	request.getRequestDispatcher("BusinessServlet?usernumber=".concat(usernumber)).forward(request, response);
		   }

}
