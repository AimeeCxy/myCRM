<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

  <head>
    <base href="<%=basePath%>">
    
    <title>用户详细信息</title>
    
  </head>
  
  <body>
    <table border="1">
  	<%
  	HashMap<String,Object> map = (HashMap<String,Object>)request.getAttribute("map");
  	%>
  	<tr>
  	<td>工号</td>
  	<td>
    <br/><%=map.get("usernumber") %>
    </td>
    </tr>
    <tr>
  	<td>密码</td>
  	<td>
    <br/><%=map.get("password") %>
    </td>
    </tr>
    <tr>
  	<td>姓名</td>
  	<td>
    <br/><%=map.get("name") %>
    </td>
    </tr>
    <tr>
  	<td>性别</td>
  	<td>
    <br/><%=map.get("sex") %>
    </td>
    </tr>
    <tr>
  	<td>职位</td>
  	<td>
    <br/><%=map.get("position") %>
    </td>
    </tr>
    <tr>
  	<td>电话</td>
  	<td>
    <br/><%=map.get("tel") %>
    </td>
    </tr>
    <tr>
  	<td>电子邮箱</td>
  	<td>
    <br/><%=map.get("email") %>
    </td>
    </tr>
    <tr>
  	<td>住址</td>
  	<td>
    <br/><%=map.get("address") %>
    </td>
    </tr>
    <tr>
  	<td>薪资</td>
  	<td>
    <br/><%=map.get("salary") %>
    </td>
    </tr>
    <tr>
  	<td>工龄</td>
  	<td>
    <br/><%=map.get("joblength") %>
    </td>
    </tr>
    <tr>
  	<td>是否审核</td>
  	<td>
    <br/><%=map.get("state") %>
    </td>
    </table>
    <form action="" method="post">
    	<input height="30px" width="50px" type="button" value="返回" onclick="window.location.href='UserServlet'">
    </form>
  </body>
</html>
