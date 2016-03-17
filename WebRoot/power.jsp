<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<base href="<%=basePath%>">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<script type="text/javascript">
	function chAll(){
		var allcheck = document.getElementById("all");
		var acheck = document.getElementsByName("a");
		for(var i=0;i<acheck.length;i++){
			acheck[i].checked = allcheck.checked;
		}
	}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>权限管理</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>

<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
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
    <li><a href="#">&nbsp;</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <a href="poweradd.jsp"><li><span><img src="images/t01.png" /></span>添加</li></a>
        <a href="powerdelete.jsp"><li><span><img src="images/t03.png" /></span>删除</li>
        </ul>
        
        
        <ul class="toolbar1">
        <li><span><img src="images/t05.png" /></span>设置</li>
        </ul>
    
    </div>
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th width="10%"><input id="all" type="checkbox" value="" checked="checked" onclick="chAll()"/>全选</th>
        <th width="15%">ID<i class="sort"><img src="images/px.gif" /></i></th>
        <th width="25%">权限名称</th>
        <th width="15%">权限URL</th>
        <th width="15%">权限状态</th>
        <th width="20%">操作</th>
        </tr>
        </thead>
        <tbody>
        <tr>
		<%
  			ArrayList<HashMap<String,Object>> list = (ArrayList<HashMap<String,Object>>)request.getAttribute("list");
  			for(int i=0;i<list.size();i++){
  				HashMap<String,Object> map = list.get(i);
  				out.print("</tr><tr>");
  		%>
  		<td width="5%"><input name="a" type="checkbox" value="" checked="checked"/>
        </td>
  		<td>
    	<br/><%=map.get("id") %>
    	</td>
    	<td>
    	<br/><%=map.get("powername") %>
    	</td>
    	<td>
    	<br/><%=map.get("powerurl") %>
    	</td>
    	<td>
    	<br/><%=map.get("state") %>
    	</td>
    	<td>
    	<a href="powermodify.jsp?id=<%=map.get("id")%>">修改/</a>
    	<a href="powerdelete.jsp?id=<%=map.get("id")%>">/停用</a>
    	</td>
    	<%} %>
  		</tr>
        </tbody>
    </table>
   
    <div class="pagin">
    	<div class="message">共<i class="blue">1256</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
        <ul class="paginList">
        <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
        <li class="paginItem"><a href="javascript:;">1</a></li>
        <li class="paginItem current"><a href="javascript:;">2</a></li>
        <li class="paginItem"><a href="javascript:;">3</a></li>
        <li class="paginItem"><a href="javascript:;">4</a></li>
        <li class="paginItem"><a href="javascript:;">5</a></li>
        <li class="paginItem more"><a href="javascript:;">...</a></li>
        <li class="paginItem"><a href="javascript:;">10</a></li>
        <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
        </ul>
    </div>
    
    <div class="tip">
    	<div class="tiptop"><span>提示信息</span><a></a></div>
        
      <div class="tipinfo">
        <span><img src="images/ticon.png" /></span>
        <div class="tipright">
        <p>是否确认对信息的修改 ？</p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
        </div>
        
        <div class="tipbtn">
        <input name="" type="button"  class="sure" value="确定" />&nbsp;
        <input name="" type="button"  class="cancel" value="取消" />
        </div>
    
    </div>
    
    </div>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>

</body>

</html>
