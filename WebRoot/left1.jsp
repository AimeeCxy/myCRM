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
    
    <%String userId = (String)session.getAttribute("userId"); 
     %>
    <dl class="leftmenu">
        
    <dd>
    <div class="title">
    <span><img src="images/leftico01.png" /></span>部门员工
    </div>
    	<ul class="menuson">
        <li class="active"><cite></cite><a href="BusinessHistoryServlet?userId=<%=(String)session.getAttribute("userId") %>" target="rightFrame">员工业务</a><i></i></li>
        <li><cite></cite><a href="BusinessConsumerServlet?userId=<%=(String)session.getAttribute("userId") %>" target="rightFrame">员工客户</a><i></i></li>
        <li><cite></cite><a href="BusinessTurnoverServlet?userId=<%=(String)session.getAttribute("userId") %>" target="rightFrame">员工业绩</a><i></i></li>
        <li><cite></cite><a href="PartUserServlet?userId=<%=(String)session.getAttribute("userId") %>" target="rightFrame">员工个人信息</a><i></i></li>
        </ul>    
    </dd>
        
    
    <dd>
    <div class="title">
    <span><img src="images/leftico03.png" /></span>业务流水
    </div>
    <ul class="menuson">
        <li><cite></cite><a href="#">进行中业务</a><i></i></li>
        <li><cite></cite><a href="#">已完成业务记录</a><i></i></li>
        <li><cite></cite><a href="#">部门业务收益</a><i></i></li>
        </ul>     
    </dd> 
   
    <dd><div class="title"><span><img src="images/leftico04.png" /></span>备忘录</div>
    <ul class="menuson">
    	<li><cite></cite><a href="#">日历</a><i></i></li>
        <li><cite></cite><a href="#">待办事项</a><i></i></li>
        <li><cite></cite><a href="#">个人备忘</a><i></i></li>
    </ul>
    
    </dd>   
    
    </dl>
    
</body>
</html>
