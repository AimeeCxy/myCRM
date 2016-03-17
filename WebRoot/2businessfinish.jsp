<%@ page language="java" import="java.util.*,utils.PDB" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>业务订单完成处理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>

  <body>
  <form action="BussinessFinishServlet" method="post">
  <input type="hidden" name="usernumber" value=<%=session.getAttribute("userId") %>/>
  <%
    PDB db = new PDB();
	ArrayList<HashMap<String,Object>> list = db.query("select history,consumer from business where usernumber=?", new String[]{session.getAttribute("userId").toString()});
	HashMap<String,Object> map = list.get(0);
	System.out.println(map.get("history"));
	String H = map.get("history").toString();
	System.out.println("H="+H);
  	String[] his = H.split("，");
  	String T = map.get("consumer").toString();
  	System.out.println("T="+T);
  	String[] tel = T.split("，");
  	String telnumber = null; 
  	boolean flag = false;
  	System.out.println(">>"+request.getParameter("i")+"<<");
    	
    	for(int j=0;j<tel.length-1;j=j+2)
    		if(tel[j].equals(his[Integer.parseInt(request.getParameter("i"))+1])){
    			flag = true;
    			telnumber = tel[j+1];
    		}
    	if(!flag)
    		telnumber = "无记录";
   %>
    	<br/>开始日期：<input type="text" name="startdate" value=<%=his[Integer.parseInt(request.getParameter("i"))] %>/>
    	<br/>完成日期：<input type="text" name="y">年<input type="text" name="m">月<input type="text" name="d">日
    	<br/>联系客户：<input type="text" name="H1" value="<%=his[Integer.parseInt(request.getParameter("i"))+1] %>"/>
    	<br/>客户电话：<input type="text" name="tel" value=<%=telnumber %>/>
    	<br/>业务内容：<input type="text" name="H2" value=<%=his[Integer.parseInt(request.getParameter("i"))+2] %>/>
    	<%
    	request.setCharacterEncoding("UTF-8");
    	int i;
    	char[] h2 = his[Integer.parseInt(request.getParameter("i"))+2].toCharArray();
    	char temp = "元".charAt(0);
    	for(i=0;i<h2.length;i++){
    		if(h2[i]==temp)
    			break;
    	}
    	i = i+1;//到了“元”字的前一位,需要加1才能定位到“元”
    System.out.println("***************"+i+"***************");
    System.out.println(h2);
    	int j=i;
    	for(int p=0;p<i;p++){
    		if(h2[p]<='9'&&h2[p]>='0'){
    			j--;
    			System.out.println("j是："+j);
    		}
    	}
    	String money = his[Integer.parseInt(request.getParameter("i"))+2].substring(j,i);
    	String jiajian = his[Integer.parseInt(request.getParameter("i"))+2].substring(j-2,j);
    	 %>
    	<br/>营业额：<input type="text" name="jiajian" value=<%=jiajian %>><input type="text" name="money" value=<%=money %>/>
    	<br/><input type="submit" value="确认完成此笔业务" >
  </form>
  </body>
</html>
