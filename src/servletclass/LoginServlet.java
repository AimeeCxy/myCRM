package servletclass;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utils.PDB;

public class LoginServlet extends HttpServlet{
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PDB db = new PDB();
		String usernumber = request.getParameter("usernumber").toString();
		String password = request.getParameter("password").toString();
		ArrayList<HashMap<String,Object>> list = db.query("select position,id from user where usernumber=?&&password=?", new String[]{usernumber,password});
	  	if(list.isEmpty()){
	  		response.getWriter().write("<script>alert('您的用户名或密码不正确，请重新输入')</script>");
	  		request.getRequestDispatcher("login.jsp").forward(request, response);
	  	}
	  	String p = list.get(0).get("position").toString();
	  	ArrayList<HashMap<String,Object>> li = db.query("select useful from actor where actorname=?", new String[]{p});  	
	  	if(li.isEmpty()){
	  		response.getWriter().write("<script>alert('您输入的用户未加入表单，请联系系统管理员')</script>");
	  		request.getRequestDispatcher("login.jsp").forward(request, response);
	  	}else if(li.get(0).get("useful").toString().equals("2")){
	  		//公司所有非管理层职员
	  		request.getRequestDispatcher("main2.jsp").forward(request, response);
	  	}else if(li.get(0).get("useful").toString().equals("1")){
	  		//公司所有管理层职员
	  		request.getRequestDispatcher("main1.jsp").forward(request, response);
	  	}else if(li.get(0).get("useful").toString().equals("0")){
	  		//管理员，即技术部部长
	  		request.getRequestDispatcher("main.jsp").forward(request, response);
	  	}
	  	//HttpServletRequest req = (HttpServletRequest)ServletActionContext.
	  	request.getSession().setAttribute("userId", usernumber);
	  	request.setAttribute("list",list);
	}
}
