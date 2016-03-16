<%@ page language="java" import="java.util.*,utils.PDB" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录客户关系管理系统</title>
<base href="<%=basePath%>">
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>
<script src="js/cloud.js" type="text/javascript"></script>

<script language="javascript">
	$(function(){
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	$(window).resize(function(){  
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
    })  
});  
</script> 

<script type="text/javascript">
//目前没用
	function userlogin(){
		var map = request.getAttribute("map");
		if(!map.isEmpty()){
			alert("登录成功");
	  		location.href='main.jsp';
	  	}
	  	else{
	  		alert("登录失败");
	  		document.getElementByID(usernumber).value = null;
	  		document.getElementByID(password).value = null;
	  		alert("工号或密码错误，请重新输入");
	  	}
	}
</script>

</head>

<body style="background-color:#1c77ac; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">

    <div id="mainBody">
      <div id="cloud1" class="cloud"></div>
      <div id="cloud2" class="cloud"></div>
    </div>  

<div class="logintop">    
    <span>请先登录客户关系管理系统</span>    
    <ul>
    <li><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    </ul>    
    </div>
    
    <div class="loginbody">
    
    <span class="systemlogo"></span> 
       
    <div class="loginbox">
    
    <ul>
    <form action="LoginServlet" method="post">
    <li><input name="usernumber" id="usernumber" type="text" class="loginuser" value="工号" onclick="JavaScript:this.value=''"/></li>
    <li><input name="password" id="password" type="text" class="loginpwd" value="密码" onclick="JavaScript:this.value=''"/></li>
    <li><input name="" type="submit" class="loginbtn" value="登录"   onsubmit="f()" /><label>
    <input name="" type="checkbox" value="" checked="checked" />记住密码</label><label><a href="#">忘记密码？</a></label></li>
    </form>
 
    </ul>
    
    </div>
    
    </div>
   
    <div class="loginbm">版权所有 <a href="http://www.baidu.com//p//小P褚">小P褚</a></div>
	
</body>
</html>
