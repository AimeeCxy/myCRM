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
<title>角色修改</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>

</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">角色管理</a></li>
    <li><a href="#">修改</a></li>
    </ul>
    </div>
    
	<%
    	PDB db = new PDB();
    	ArrayList<HashMap<String,Object>> list = db.query("select * from actor where id=?", new String[]{request.getParameter("id").toString()});
    	HashMap<String,Object> map = list.get(0);
	  	String id = map.get("id").toString();
    	String actorname = map.get("actorname").toString();
    	String useful = map.get("useful").toString();
     %>
     
     <form action="ActorModifyOkServlet" method="post">
     <table height="40px" width="80px" border="1" style="margin-left: 100px">
     <input type="hidden" name="id" value=<%=id %>>
     <tr>
     <td>职务名称：</td><td><input class="dfinput" type="text" name="actorname" value=<%=actorname %>></td><br/>
     </tr><tr>
     <td>权限级别：</td><td><input class="dfinput" type="text" name="useful" value=<%=useful %>></td><br/>
     </tr><tr>
     <td><input class="scbtn" type="submit" value="修改" ></td>
     <td><input class="scbtn" type="button" value="取消" onclick="window.location.href='ActorServlet'"></td>
     </tr>
     </table>
     </form>

</body>

</html>
