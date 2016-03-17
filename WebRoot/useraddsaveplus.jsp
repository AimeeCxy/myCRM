<%@ page language="java" import="java.util.*,utils.PDB" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>完善新用户详细信息</title>
    
  </head>
  
  <body>
  	<%	
  		request.setCharacterEncoding("UTF-8");
  	String id = null;
  	id = request.getParameter("id").toString();
  	String position = null;
  	position = request.getParameter("position").toString();
  	String password = null;
  	password = request.getParameter("password").toString();
  	String tel = null;
  	tel = request.getParameter("tel").toString();
  	String email = null;
  	email = request.getParameter("email").toString();
  	String address = null;
  	address = request.getParameter("address").toString();
  	String salary = null;
  	salary = request.getParameter("salary").toString();
  	String joblength = null;
  	joblength = request.getParameter("joblength").toString();
  
  	PDB db = new PDB();
  	System.out.print(request.getParameter("usernumber").toString());
  	db.update("update user set position=?,password=?,tel=?,address=?,salary=?,joblength=?,state='已审核' where usernumber=?",new Object[]{position,password,tel,address,salary,joblength,request.getParameter("usernumber").toString()});
 	request.getRequestDispatcher("UserServlet").forward(request, response);
  	 %>
  </body>
</html>
