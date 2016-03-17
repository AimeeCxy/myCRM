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
<title>完善新用户信息</title>
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
    <li><a href="#">用户管理</a></li>
    <li><a href="#">添加用户</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    <div id="usual1" class="usual"> 
    <div class="itab">
  	<ul> 
    <li><a href="#tab1" class="selected">基本信息</a></li> 
    <li><a href="#tab2">详细信息</a></li> 
  	</ul>
    </div> 
    
    <!--form action="useraddsaveplus.jsp" method="post"-->
    
  	<div id="tab1" class="tabson">
    <div class="formtext">Hi，<b>新用户</b>，请<b>确认</b>您的基本信息！</div>
    <ul class="forminfo">
    
    <%
  	PDB db = new PDB();
  	ArrayList<HashMap<String,Object>> list = db.query("select * from user where state='新用户'", new String[]{});
	HashMap<String,Object> map = list.get(0);  	
  	 %>
    <li><label>工号<b>*</b></label><input name="usernumber" value=<%=map.get("usernumber") %> type="text" class="dfinput" style="width:518px;"/></li>
    <li><label>姓名<b>*</b></label><input name="name" value=<%=map.get("name") %> type="text" class="dfinput" style="width:518px;"/></li>
    <li><label>性别<b>*</b></label><input name="sex" value=<%=map.get("sex") %> type="text" class="dfinput" style="width:518px;"/></li>
    

  	</div>
  
  	<form action="useraddsaveplus.jsp" method="post">
  	<div id="tab2" class="tabson">
    <ul class="seachform">
    <div class="formtext">Hi，<b>新用户</b>，请您将您的详细信息填写完整</div>
    <ul class="forminfo">
  
  	<li><input type="hidden" name="id" value=<%=map.get("id") %>></li>
  	<li><input type="hidden" name=usernumber value=<%=map.get("usernumber") %>></li>
    <li><label>职位</label><input name="position" type="text" class="dfinput" style="width:518px;"/></li>
    <li><label>密码</label><input type="password" name="password" type="text" class="dfinput" style="width:518px;"/></li>
    <li><label>电话</label><input name="tel" type="text" class="dfinput" style="width:518px;"/></li>
    <li><label>电子邮箱</label><input name="email" type="text" class="dfinput" style="width:518px;"/></li>
    <li><label>住址</label><input name="address" type="text" class="dfinput" style="width:518px;"/></li>
    <li><label>薪资</label><input name="salary" type="text" class="dfinput" style="width:518px;"/></li>
    <li><label>工龄</label><input name="joblength" type="text" class="dfinput" style="width:518px;"/></li>
    
    <li><label>&nbsp;</label><input name="" type="submit" class="scbtn" value="完成" /></li>
    
    </form>
    
    </ul>
      <!-- 
    <form action="useraddsave.jsp" method="post">
  <table border="10">
 	<tr>
 	<td>职位：</td>
 	<td><input name="position" type="text"></td>
 	</tr>
 	<tr>
 	<td>电话：</td>
 	<td><input name="tel" type="text"></td>
 	</tr>
 	<tr>
 	<td>电子邮箱：</td>
 	<td><input name="email" type="text"></td>
 	</tr>
 	<tr>
 	<td>住址：</td>
 	<td><input name="address" type="text"></td>
 	</tr>
    <tr>
 	<td>薪资：</td>
 	<td><input name="salary" type="text"></td>
 	</tr>
 	<tr>
 	<td>工龄：</td>
 	<td><input name="joblength" type="text"></td>
 	</tr>	
    <tr><td><input type="submit" value="完成"></td></tr>
    </table>
    </form>
    -->
       </ul>
	</div> 
 
	<script type="text/javascript"> 
      $("#usual1 ul").idTabs(); 
    </script>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
 
    </div>

</body>

</html>
   