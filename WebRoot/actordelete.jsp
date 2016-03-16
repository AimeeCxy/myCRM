<%@ page language="java" import="java.util.*,utils.PDB" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>删除职务</title>

  </head>
  
 <%
    	PDB db = new PDB();
	  	ArrayList<HashMap<String,Object>> list = db.query("select * from actor where id=?", new String[]{request.getParameter("id").toString()});
	  	HashMap<String,Object> map = list.get(0);
     %>
  	<table border="1">
  	<tr>
  	<td width="30%">ID</td>
  	<td width="40%">职务名称</td>
  	<td width="30%">权限级别</td>
  	</tr>
  	<tr>
  	<td><%=request.getParameter("id").toString() %></td>
  	<td><%=map.get("actorname") %></td>
  	<td><%=map.get("useful") %></td>
  	</tr>
  	</table>
	<input class="scbtn" type="button" value="删除" onclick="window.location.href='ActorDeleteOkServlet?id=<%=request.getParameter("id")%>'">&nbsp;&nbsp;
	<input class="scbtn" type="button" value="取消" onclick="window.location.href='ActorServlet'">
</html>
