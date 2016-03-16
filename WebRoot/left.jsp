<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>

<script type="text/javascript">
$(function(){	
	//导航切换
	$(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active")
		$(this).addClass("active");
	});
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	});
})	
</script>


</head>

<body style="background:#f0f9fd;">
	<div class="lefttop"><span></span>首页</div>
    
    <dl class="leftmenu">
        
    <dd>
    <div class="title">
    <span><img src="images/leftico01.png" /></span>管理功能
    </div>
    	<ul class="menuson">
        <li class="active"><cite></cite><a href="index.jsp" target="rightFrame">首页</a><i></i></li>
        <li><cite></cite><a href="UserServlet" target="rightFrame">用户管理</a><i></i></li>
        <li><cite></cite><a href="ActorServlet" target="rightFrame">角色管理</a><i></i></li>
        <li><cite></cite><a href="PowerServlet" target="rightFrame">权限管理</a><i></i></li>
        </ul>    
    </dd>
        
    <dd>
    <div class="title">
    <span><img src="images/leftico03.png" /></span>系统素材
    </div>
    <ul class="menuson">
        <li><cite></cite><a href="imgtable.jsp" target="rightFrame">图片数据表</a><i></i></li>
        <li><cite></cite><a href="form.jsp" target="rightFrame">添加编辑</a><i></i></li>
        <li><cite></cite><a href="imglist.jsp" target="rightFrame">图片列表</a><i></i></li>
        <li><cite></cite><a href="tools.jsp" target="rightFrame">常用工具</a><i></i></li>
        <li><cite></cite><a href="filelist.jsp" target="rightFrame">信息管理</a><i></i></li>
        <li><cite></cite><a href="error.jsp" target="rightFrame">404页面</a><i></i></li>
        </ul>     
    </dd> 
    
    <dd><div class="title"><span><img src="images/leftico02.png" /></span>内部反馈</div>
    <ul class="menuson">
        <li><cite></cite><a href="feedbacknew.jsp" target="rightFrame">未读反馈</a><i></i></li>
        <li><cite></cite><a href="feedbackold.jsp" target="rightFrame">反馈历史</a><i></i></li>
       	<li><cite></cite><a href="feedbackreply.jsp" target="rightFrame">回复历史</a><i></i></li>
    </ul>    
    </dd>  
    
    
    <dd><div class="title"><span><img src="images/leftico04.png" /></span>系统维护</div>
    <ul class="menuson">
        <li><cite></cite><a href="#">修复记录</a><i></i></li>
        <li><cite></cite><a href="#">更新记录</a><i></i></li>
        <li><cite></cite><a href="#">版本升级</a><i></i></li>
    </ul>
    </dd>   
    
    </dl>
    
</body>
</html>
