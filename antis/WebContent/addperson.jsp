<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%  
    String path = request.getContextPath();  
    String basePath = request.getScheme() + "://"  
            + request.getServerName() + ":" + request.getServerPort()  
            + path + "/";  
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet">
<link href="<%=basePath%>css/datepicker3.css" rel="stylesheet">
<link href="<%=basePath%>css/styles.css" rel="stylesheet">
<script src="<%=basePath%>js/jquery-1.11.1.min.js"></script>
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<script src="<%=basePath%>js/bootstrap-datepicker.js"></script>
<%-- <link href="<%=basePath%>css/indexbootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="<%=basePath%>css/indexstyle.css" rel="stylesheet" type="text/css" media="all" /> --%>
<style>
#ataver{

 height:60px;
 width:60px;
 border-radius:50px;
 padding:5px;
 
}
.name{
 color:#ffffff;
}
.info{

 displayl:block;
 width:300px;
 margin:0 atuo;
 margin-left:8px;
 margin-top:40px;
}
.menu li a{
color:#fff;
margin-left:5px;
}
#forminfo{
 margin-top:20px;
}
.nav, .nav-pills li a{

color:#fff;
}

.row{
margin-top:10px;}
.content{
display:table;
margin:0 auto;
}

</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>校园精准扶贫管理系统</title>

<style type="text/css">
.error {
	color: red
}
.control-label1{
 font-size:15px;
  
  }
  .btn{
  display:table;
  margin:0 auto;
  margin:10px 0 0 10px;
  }
  td{
  width:250px;
  }
  th{
  width:100px;}
  
</style>

</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" id="navnewclass">
		<div class="container-fluid">
			<div class="navbar-header">
			    <a class="navbar-brand" href="#"><span>点对点—校园精准扶贫平台</span></a>
				 <a class="navbar-brand glyphicon glyphicon-off pull-right" href="${pageContext.request.contextPath}/persons/user_cancellation.action"><span></span></a>
				 <a class="navbar-brand glyphicon pull-right"><span style="font-size:10px;line-height:17px;color:#F0F8FF;">当前在线人数：${sessionScope.zaixianrenshu}</span></a>	
				  
			   <ul class="nav nav-pills" style="display:table; margin:0 auto;margin-bottom:10px;"> 
					<li role="presentation" ><a href="${pageContext.request.contextPath}/zuozhan_map.jsp">校园扶贫</a></li>
					<li role="presentation"><a href="${pageContext.request.contextPath}/jcxx/bftjjcxx.action" >基础信息</a></li>
					<c:if test="${sessionScope.userschedule == '管理员'}"><c:if test="${sessionScope.userschedule == '管理员'}"><li role="presentation" ><a href="${pageContext.request.contextPath}/bftj/bfgl.action">帮扶管理</a></li></c:if></li></c:if>
					<c:if test="${sessionScope.userschedule == '管理员'}"><c:if test="${sessionScope.userschedule == '管理员'}"><li role="presentation"><a href="${pageContext.request.contextPath}/fpxm/xmsq.action">扶贫项目管理</a></li></c:if></c:if>
					<li role="presentation"><a href="${pageContext.request.contextPath}/bftj/bftj.action">考核管理</a></li>
					<c:if test="${sessionScope.userschedule == '管理员'}"><li role="presentation"><a href="${pageContext.request.contextPath}/mb/mbdy.action">信息管理</a></li></c:if>
					<c:if test="${sessionScope.userschedule == '管理员'}"><li role="presentation" class="active"><a href="${pageContext.request.contextPath}/persons/personlist.action">系统管理</a></li></c:if>
					<li role="presentation"><a href="${pageContext.request.contextPath}/FrontPage/index.jsp">进入前台</a></li>								
				</ul>
			</div>
		</div>
	</nav>
		<div class="right-bottom">	
		<div class="form-inline">
		 <div class="content">
	<h1 id="btys">用户添加</h1>
	<hr>
	</div>
	
	
	
<form class="form-horizontal" name="addpersonform" method="post" >
<center>
  <table  class="zdtable" >
    <tr>
	<th>用户名</th><td><input id="user1" name="username" type="text"></td>
	</tr>
	<tr>
	<th>密码</th><td><input id="user2" name="userpassword" type="text"></td>
	</tr>
	<tr>
	<th>邮箱</th><td><input id="user3" name="email" type="text"></td>
	</tr>
	<tr>
	<th>用户类型</th>
	<td><select name="userschedule" class="form-control">
	<option style="font-size:25px;">普通用户</option>
	<option style="font-size:25px;">管理员</option>
	</select></td>
	</tr>
   </table>
   <br/>
   	<input  type="submit" value="确认添加" onclick="addpersonbtn()" id="xtbfbtnclass"> 
    <input  type="reset" value="重置" id="xtbfbtnclass">
   </center>
   </form>
    </div>

</div>

	</div>
	
</body>
<script type="text/javascript">
function addpersonbtn(){
	var user1=document.getElementById("user1");
	var user2=document.getElementById("user2");
	var user3=document.getElementById("user3");
	if(user1.value && user2.value && user3.value !=null){
		document.addpersonform.action="${pageContext.request.contextPath}/persons/addperson.action";
		document.addpersonform.submit();
		alert("添加用户成功！");
	}
	else{
		alert("添加用户失败！");
	}
}
</script>