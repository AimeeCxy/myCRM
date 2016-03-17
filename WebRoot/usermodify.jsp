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
<title>用户修改</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>

</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">用户管理</a></li>
    <li><a href="#">修改</a></li>
    </ul>
    </div>
    
	<%
    	PDB db = new PDB();
    	ArrayList<HashMap<String,Object>> list = db.query("select * from user where id=?", new String[]{request.getParameter("id").toString()});
    	HashMap<String,Object> map = list.get(0);
	  	String id = map.get("id").toString();
    	String usernumber = map.get("usernumber").toString();
    	String password = map.get("password").toString();
  		String name = map.get("name").toString();
  		String sex = map.get("sex").toString();
  		String position = map.get("position").toString();
  		String tel = map.get("tel").toString();
  		String email = map.get("email").toString();
  		String address = map.get("address").toString();
  		String salary = map.get("salary").toString();
  		String joblength = map.get("joblength").toString();
     %>
     
     <form action="UserModifyOkServlet" method="post">
     <table height="40px" width="80px" border="1" style="margin-left: 100px">
     <input type="hidden" name="id" value=<%=id %>>
     <tr>
     <td>工号：</td><td><input class="dfinput" type="text" name="usernumber" value=<%=usernumber %>></td><br/>
     </tr><tr>
     <td>密码：</td><td><input class="dfinput" type="text" name="password" value=<%=password %>></td><br/>
     </tr><tr>
     <td>姓名：</td><td><input class="dfinput" type="text" name="name" value=<%=name %>></td><br/>
     </tr><tr>
     <td>性别：</td><td><input class="dfinput" type="text" name="sex" value=<%=sex %>></td><br/>
     </tr><tr>
     <td>职位：</td><td><input class="dfinput" type="text" name="position" value=<%=position %>></td><br/>
     </tr><tr>
     <td>电话：</td><td><input class="dfinput" type="text" name="tel" value=<%=tel %>></td><br/>
     </tr><tr>
     <td>E-mail：</td><td><input class="dfinput" type="text" name="email" value=<%=email %>></td><br/>
     </tr><tr>
     <td>住址：</td><td><input class="dfinput" type="text" name="address" value=<%=address %>></td><br/>
     </tr><tr>
     <td>薪资：</td><td><input class="dfinput" type="text" name="salary" value=<%=salary %>></td><br/>
     </tr><tr>
     <td>工龄：</td><td><input class="dfinput" type="text" name="joblength" value=<%=joblength %>></td><br/>
     </tr><tr>
     <td><input class="scbtn" type="submit" value="修改" ></td>
     <td><input class="scbtn" type="button" value="取消" onclick="window.location.href='UserServlet'"></td>
     </tr>
     </table>
     </form>

</body>

</html>
