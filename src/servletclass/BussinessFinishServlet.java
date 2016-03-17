package servletclass;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utils.PDB;

public class BussinessFinishServlet  extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		 	request.setCharacterEncoding("UTF-8");
		 	String H1 = request.getParameter("H1").toString();
		 	String y = request.getParameter("y").toString();
		 	String m = request.getParameter("m").toString();
		 	String d = request.getParameter("d").toString();
		 	String jiajian = request.getParameter("jiajian").toString();
		 	String money = request.getParameter("money").toString();
			System.out.println(H1);
			System.out.println(y+"年"+m+"月"+d+"日");
			System.out.println(jiajian);
			System.out.println(money);
			
			PDB db = new PDB();
			//System.out.println(request.getParameter("usernumber"));
			ArrayList<HashMap<String,Object>> list = db.query("select turnover from business where usernumber=?", new String[]{request.getParameter("usernumber")});
			HashMap<String,Object> map = list.get(0);
		  	String old = map.get("turnover").toString();
		  	String newturnover = old.concat(y+"年"+m+"月"+d+"日"+"，"+H1+"，"+jiajian+money);
		  	
		 	db.update("update business set turnover=? where usernumber=?",new Object[]{newturnover,request.getParameter("usernumber")});
		 	request.getRequestDispatcher("BusinessServlet?usernumber=".concat(request.getParameter("usernumber"))).forward(request, response);
		   
	}
}
