<%@ page language="java" import="java.util.*,utils.PDB" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>权限修改</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>

</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">权限管理</a></li>
    <li><a href="#">修改</a></li>
    </ul>
    </div>
    
	<%
    	PDB db = new PDB();
    	ArrayList<HashMap<String,Object>> list = db.query("select * from power where id=?", new String[]{request.getParameter("id").toString()});
    	HashMap<String,Object> map = list.get(0);
	  	String id = map.get("id").toString();
    	String powername = map.get("powername").toString();
    	String powerurl = map.get("powerurl").toString();
    	String state = map.get("state").toString();
     %>
     
     <form action="PowerModifyOkServlet" method="post">
     <table height="40px" width="80px" border="1" style="margin-left: 100px">
     <input type="hidden" name="id" value=<%=id %>>
     <tr>
     <td>权限名称：</td><td><input class="dfinput" type="text" name="powername" value=<%=powername %>></td><br/>
     </tr><tr>
     <td>权限URL：</td><td><input class="dfinput" type="text" name="powerurl" value=<%=powerurl %>></td><br/>
     </tr><tr>
     <td>权限状态：</td><td><input class="dfinput" type="text" name="state" value=<%=state %>></td><br/>
     </tr><tr>
     <td><input class="scbtn" type="submit" value="修改" ></td>
     <td><input class="scbtn" type="button" value="取消" onclick="window.location.href='PowerServlet'"></td>
     </tr>
     </table>
     </form>

</body>

</html>
