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
    <span><img src="images/leftico01.png" /></span>业务功能
    </div>
    	<ul class="menuson">
        <li><cite></cite><a href="2newbusiness.jsp?usernumber=<%=session.getAttribute("userId") %>" target="rightFrame">新建业务</a><i></i></li>
        <li class="active"><cite></cite><a href="BusinessServlet?usernumber=<%=session.getAttribute("userId") %>" target="rightFrame">进行中业务</a><i></i></li>
        <li><cite></cite><a href="imgtable.jsp" target="rightFrame">新增客户</a><i></i></li>
        <li><cite></cite><a href="form.jsp" target="rightFrame">联系中客户</a><i></i></li>
        </ul>    
    </dd>
        
    
    <dd>
    <div class="title">
    <span><img src="images/leftico04.png" /></span>历史信息
    </div>
    <ul class="menuson">
   		<li><cite></cite><a href="imglist.jsp" target="rightFrame">本周收益</a><i></i></li>
        <li><cite></cite><a href="#">业务流水</a><i></i></li>
        <li><cite></cite><a href="#">客户通讯</a><i></i></li>
        <li><cite></cite><a href="#">收益记录</a><i></i></li>
        </ul>     
    </dd> 
   
    <dd><div class="title"><span><img src="images/leftico03.png" /></span>自定义</div>
    <ul class="menuson">
        <li><cite></cite><a href="#">日历</a><i></i></li>
        <li><cite></cite><a href="usermyself.jsp?id=<%=(String)session.getAttribute("userId") %>" target="rightFrame">个人信息</a><i></i></li>
        <li><cite></cite><a href="#">常用资料</a><i></i></li>
        <li><cite></cite><a href="feedbackuser.jsp" target="rightFrame">内部反馈</a><i></i></li>
    </ul>
    
    </dd>   
    
    </dl>
    
</body>
</html>
