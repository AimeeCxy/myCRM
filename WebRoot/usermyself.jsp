<%@ page language="java" import="java.util.*,utils.PDB" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

  <head>
    <base href="<%=basePath%>">
    
    <title>个人信息</title>
    
  </head>
  
  <body>
    <table border="1">
  	<%
  	PDB db = new PDB();
  	ArrayList<HashMap<String,Object>> list = db.query("select * from user where usernumber=?",new String[]{(String)session.getAttribute("userId")});
  	HashMap<String,Object> map = list.get(0);
  	%>
  	<form action="UserMyselfModifyServlet" method="post" onsubmit="return f()">
  	<tr>
  	<td>工号</td>
  	<td>
    <br/><input readonly="readonly" name="usernumber" value=<%=map.get("usernumber") %>>
    </td>
    </tr>
    <tr>
  	<td>密码</td>
  	<td>
    <br/><input name="password" value=<%=map.get("password") %>>
    </td>
    </tr>
    <tr>
  	<td>姓名</td>
  	<td>
    <br/><input name="name" value=<%=map.get("name") %>>
    </td>
    </tr>
    <tr>
  	<td>性别</td>
  	<td>
    <br/><input name="sex" value=<%=map.get("sex") %>>
    </td>
    </tr>
    <tr>
  	<td>职位</td>
  	<td>
    <br/><input name="position" value=<%=map.get("position") %>>
    </td>
    </tr>
    <tr>
  	<td>电话</td>
  	<td>
    <br/><input name="tel" value=<%=map.get("tel") %>>
    </td>
    </tr>
    <tr>
  	<td>电子邮箱</td>
  	<td>
    <br/><input name="email" value=<%=map.get("email") %>>
    </td>
    </tr>
    <tr>
  	<td>住址</td>
  	<td>
    <br/><input name="address" value=<%=map.get("address") %>>
    </td>
    </tr>
    <tr>
  	<td>薪资</td>
  	<td>
    <br/><input name="salary" value=<%=map.get("salary") %>>
    </td>
    </tr>
    <tr>
  	<td>工龄</td>
  	<td>
    <br/><input name="joblength" value=<%=map.get("joblength") %>>
    </td>
    </tr>
    <tr>
  	<td>是否审核</td>
  	<td>
    <br/><input name="state" value=<%=map.get("state") %>>
    </td>
    </table>
    	&nbsp;
    	<input class="scbtn" height="30px" width="50px" type="submit" value="保存修改" >
    	&nbsp;
    	<input class="scbtn" height="30px" width="50px" type="button" value="不保存" onclick=g()>
    </form>
  </body>
  
  <script type="text/javascript">
  	function f(){
  		var flag = true;
  		if(alert("确定要保存修改？"))
  			flag = true;
  		return flag;
  		//window.location.href="usermyself.jsp";
  	}
  	function g(){
  		alert("不保存直接返回？");
  		window.location.href="usermyself.jsp";
  	}
  </script>
</html>
