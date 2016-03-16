<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

  <head>
    <base href="<%=basePath%>">
    
    <title>业务详细信息</title>
    
  </head>
  
  <body>
    <table border="1">
  	<%
  	HashMap<String,Object> map = (HashMap<String,Object>)request.getAttribute("map");
  	String H = map.get("history").toString();
  	String[] his = H.split("，");
  	%>
  	<tr>
  	<td>日期</td><td>业务联系人</td><td>业务内容</td>
    </tr>
	<%
	for(int i=0;i<his.length;i=i+3){
		out.print("</tr><tr>");
	 %>
  		<td>
    	<br/><%=his[i] %>
    	</td>
    	<td>
    	<br/><%=his[i+1] %>
    	</td>
    	<td>
    	<br/><%=his[i+2] %>
    	</td>
    	<%} %>
    </tr> 
    </table>
    <form action="" method="post">
    	<input height="30px" width="50px" type="button" value="返回" onclick="window.location.href='BusinessHistoryServlet?userId=<%=(String)session.getAttribute("userId") %>'">
    </form>
  </body>
</html>
