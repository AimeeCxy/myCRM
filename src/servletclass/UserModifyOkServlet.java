package servletclass;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utils.PDB;

public class UserModifyOkServlet extends HttpServlet{
	
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		PDB db = new PDB();
		String id = request.getParameter("id").toString();
	    String usernumber = request.getParameter("usernumber").toString();
	    String password = request.getParameter("password").toString();
	  	String name = request.getParameter("name").toString();
	  	String sex = request.getParameter("sex").toString();
	  	String position = request.getParameter("position").toString();
	  	String tel = request.getParameter("tel").toString();
	  	String email = request.getParameter("email").toString();
	  	String address = request.getParameter("address").toString();
	  	String salary = request.getParameter("salary").toString();
	  	String joblength = request.getParameter("joblength").toString();
	  	System.out.println(address);
		db.update("update user set usernumber=?,password=?,name=?,sex=?,position=?,tel=?,email=?,address=?,salary=?,joblength=?,state='已审核' where id=?",new Object[]{usernumber,password,name,sex,position,tel,email,address,salary,joblength,id});
		request.getRequestDispatcher("UserServlet").forward(request, response);
	}
}
