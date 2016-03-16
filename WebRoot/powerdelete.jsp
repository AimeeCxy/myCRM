<%@ page language="java" import="java.util.*,utils.PDB" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>删除权限</title>

  </head>
  
 <%
    	PDB db = new PDB();
	  	ArrayList<HashMap<String,Object>> list = db.query("select * from power where id=?", new String[]{request.getParameter("id").toString()});
	  	HashMap<String,Object> map = list.get(0);
     %>
  	<table border="1">
  	<tr>
  	<td width="20%">ID</td>
  	<td width="30%">权限名称</td>
  	<td width="30%">权限URL</td>
  	<td width="20%">权限状态</td>
  	</tr>
  	<tr>
  	<td><%=request.getParameter("id").toString() %></td>
  	<td><%=map.get("powername") %></td>
  	<td><%=map.get("powerurl") %></td>
  	<td><%=map.get("state") %></td>
  	</tr>
  	</table>
	<input class="scbtn" type="button" value="停用" onclick="window.location.href='PowerDeleteOkServlet?id=<%=request.getParameter("id")%>'">&nbsp;&nbsp;
	<input class="scbtn" type="button" value="取消" onclick="window.location.href='PowerServlet'">
</html>
