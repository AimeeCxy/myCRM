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
<title>添加角色</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/select.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
<script type="text/javascript" src="js/select-ui.min.js"></script>
<script type="text/javascript" src="editor/kindeditor.js"></script>

<script type="text/javascript">
    KE.show({
        id : 'content7',
        cssPath : './index.css'
    });
  </script>
  
<script type="text/javascript">
$(document).ready(function(e) {
    $(".select1").uedSelect({
		width : 345			  
	});
	$(".select2").uedSelect({
		width : 167  
	});
	$(".select3").uedSelect({
		width : 100
	});
});
</script>

<script type="text/javascript">
	function adduser(){
		var usernumber = document.getElementById(usernumber);
		var name = document.getElementById(name);
		var sex = document.getElementById(sex);
		var position = document.getElementById(position);
		var tel = document.getElementById(tel);
		var email = document.getElementById(email);
		var address = document.getElementById(address);
		var salary = document.getElementById(salary);
		var joblength = document.getElementById(joblength);
		alert(joblength);
		location.href='useraddsave.jsp';
	}
</script>

</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">角色管理</a></li>
    <li><a href="#">添加角色</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    <div id="usual1" class="usual"> 
    <div class="itab">
  	<ul> 
    <li><a href="#tab1" class="selected">角色信息</a></li> 
    
  	</ul>
    </div> 
    
    <form action="ActorAddServlet" method="post">
    
  	<div id="tab1" class="tabson">
    <div class="formtext">Hi，<b>admin</b>，请您填写新角色基本信息！（必填）</div>
    <ul class="forminfo">
    
    <li><label>职务名称<b>*</b></label><input name="actorname" type="text" class="dfinput" style="width:518px;"/></li>
    <li><label>权限级别<b>*</b></label><input name="useful" type="text" class="dfinput" style="width:518px;"/></li>
    <li><input class="scbtn" type="submit" value="添加"></li>
    </form>
    
    <script type="text/javascript"> 
      $("#usual1 ul").idTabs(); 
    </script>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
 
    </div>

</body>

</html>
   
   