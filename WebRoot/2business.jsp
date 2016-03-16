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
<title>业务详细信息</title>
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
    <li><a href="#">业务功能</a></li>
    <li><a href="#">新建业务</a></li>
    </ul>
    </div>
    
    <table border="1">
  	<% 
  	//LinkList<HashMap<String,Object>> list = request.getParameter("list")
  	HashMap<String,Object> map = (HashMap<String,Object>)request.getAttribute("map");
  	String H = map.get("history").toString();
  	String[] his = H.split("，");
  	String T = map.get("consumer").toString();
  	String[] tel = T.split("，"); 
  	%>
  	<tr>
  	<td width="20%">开始日期</td><td width="20%">业务联系人</td><td width="20%">联系电话</td><td width="30%">业务内容</td><td width="10%">操作</td>
    </tr>
	<%
	for(int i=0;i<his.length-3;i=i+4){
		out.print("</tr><tr>");
	 %>
  		<td>
    	<br/><%=his[i] %>
    	</td>
    	<td>
    	<br/><%=his[i+1] %>
    	</td>
    	<%
    	boolean flag = false;
    	for(int j=0;j<tel.length-1;j=j+2)
    		if(tel[j].equals(his[i+1])){
    			flag = true;
    			out.print("<td name='t'>"+tel[j+1]+"</td>");
    		}
    	if(!flag)
    		out.print("<td>无记录</td>");
    	 %>
    	<td>
    	<br/><%=his[i+2] %>
    	</td>
    	<td>
    	<br/><a href="2businessfinish.jsp?i=<%=i %>">业务完成</a>
    	<%System.out.println("----"+i+"----"); %>
    	</td>
    	<%} %>
    </tr> 
    </table>
  </body>
</html>
