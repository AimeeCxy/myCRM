<%@ page language="java" import="java.util.*,utils.PDB" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>删除用户</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
    <%
    	PDB db = new PDB();
	  	ArrayList<HashMap<String,Object>> list = db.query("select * from user where id=?", new String[]{request.getParameter("id").toString()});
	  	HashMap<String,Object> map = list.get(0);
     %>
  	<table border="1">
  	<tr>
  	<td width="15%">ID</td>
  	<td width="20%">工号</td>
  	<td width="20%">姓名</td>
  	<td width="15%">性别</td>
  	<td width="30%">职位</td>
  	</tr>
  	<tr>
  	<td><%=request.getParameter("id").toString() %></td>
  	<td><%=map.get("usernumber") %></td>
  	<td><%=map.get("name") %></td>
  	<td><%=map.get("sex") %></td>
  	<td><%=map.get("position") %></td>
  	</tr>
  	</table>
	<input class="scbtn" type="button" value="删除" onclick="window.location.href='UserDeleteOkServlet?id=<%=request.getParameter("id")%>'">&nbsp;&nbsp;
	<input class="scbtn" type="button" value="取消" onclick="window.location.href='UserServlet'">
</html>
