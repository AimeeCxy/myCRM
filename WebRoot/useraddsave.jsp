<%@ page language="java" import="java.util.*,utils.PDB" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加新用户到数据库</title>

  </head>
  
  <body>
    <%
    request.setCharacterEncoding("UTF-8");
  	String usernumber = null;
  	usernumber = request.getParameter("usernumber").toString();
  	String name = null;
  	name = request.getParameter("name").toString();
  	String sex = null;
  	sex = request.getParameter("sex").toString();
  	
  	PDB db = new PDB();
  	
  	db.update("insert into user (usernumber,name,sex,state)values(?,?,?,'新用户')",new Object[]{usernumber,name,sex,null,null,null,null,null});
 	request.getRequestDispatcher("UserServlet").forward(request, response);
   %>
   
  </body>
</html>
