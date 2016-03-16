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
<title>添加权限</title>
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

</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">权限管理</a></li>
    <li><a href="#">添加权限</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    <div id="usual1" class="usual"> 
    <div class="itab">
  	<ul> 
    <li><a href="#tab1" class="selected">权限信息</a></li> 
    
  	</ul>
    </div> 
    
    <form action="PowerAddServlet" method="post">
    
  	<div id="tab1" class="tabson">
    <div class="formtext">Hi，<b>admin</b>，请您填写新权限基本信息！（必填）</div>
    <ul class="forminfo">
    
    <li><label>权限名称<b>*</b></label><input name="powername" type="text" class="dfinput" style="width:518px;"/></li>
    <li><label>权限URL<b>*</b></label><input name="powerurl" type="text" class="dfinput" style="width:518px;"/></li>
    <li><label>权限状态<b>*</b></label><input name="state" type="text" class="dfinput" style="width:518px;"/></li>
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
   
   