<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%!String year;
String month; %>
<%month = request.getParameter("month");
year = request.getParameter("year");
 %>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>日历</title>
    
    <script Language = "JavaScript">
    	
    </script>

  </head>
  
  <body>
    This is my JSP page. <br>
  </body>
</html>
