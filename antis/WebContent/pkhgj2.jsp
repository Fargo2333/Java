<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
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


</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>校园精准扶贫管理系统</title>

<style type="text/css">
.error {
	color: red
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>修改扶贫项目</title>
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
					<c:if test="${sessionScope.userschedule == '管理员'}"><li role="presentation" class="active"><a href="${pageContext.request.contextPath}/bftj/bfgl.action">帮扶管理</a></li></c:if>
					<c:if test="${sessionScope.userschedule == '管理员'}"><li role="presentation"><a href="${pageContext.request.contextPath}/fpxm/xmsq.action">扶贫项目管理</a></li></c:if>
					<li role="presentation"><a href="${pageContext.request.contextPath}/bftj/bftj.action">考核管理</a></li>
					<c:if test="${sessionScope.userschedule == '管理员'}"><li role="presentation"><a href="${pageContext.request.contextPath}/mb/mbdy.action">信息管理</a></li></c:if>
					<c:if test="${sessionScope.userschedule == '管理员'}"><li role="presentation"><a href="${pageContext.request.contextPath}/persons/personlist.action">系统管理</a></li></c:if>	<li role="presentation"><a href="${pageContext.request.contextPath}/FrontPage/index.jsp">进入前台</a></li>			
				</ul>
			</div>
		</div>
	</nav>
	<div id="sidebar-collapse" class="col-sm-2 col-lg-2 sidebar" style="background:url(${pageContext.request.contextPath}/images/fpbg.jpg) no-repeat;">
	    <div class="info">
	   <img id="ataver" src="${pageContext.request.contextPath}/images/admin.jpg">
	   <span class="name">${sessionScope.username }</span>	
	  
	     </div>
	
	   <ul class="nav menu" style="margin-top:50px;">
	   <li><a href="${pageContext.request.contextPath}/jcxx/bftjjcxx.action" style="color:#fff"><span></span>帮扶人基础信息</a></li>
	   <li><a href="${pageContext.request.contextPath}/jcxx/pkhjcxx.action" style="color:#fff"><span></span>贫困户基础信息</a></li>
			<li><a href="${pageContext.request.contextPath}/addbftj.jsp" style="color:#fff"><span></span>帮扶负责人添加</a></li>
			<li><a href="${pageContext.request.contextPath}/addpkh.jsp"><span></span> 贫困户建档</a></li>
			<c:if test="${sessionScope.userschedule == '管理员'}">
			<li><a href="${pageContext.request.contextPath}/jcxx/bfwsh.action"><span></span> 帮扶人审核</a></li>
			<li><a href="${pageContext.request.contextPath}/jcxx/pkhwsh.action"><span></span> 贫困户审核</a></li><li><a href="${pageContext.request.contextPath}/jcxx/pkhgj.action"><span></span> 贫困户跟进</a></li>
			</c:if>
			</ul>
			
	
	</div>
<form action="${pageContext.request.contextPath }/jcxx/updatepkhgj.action" method="post" >
<input type="hidden" name="id" value="${id}"/>
<br><br>
<center>
<table border="1" cellpadding="5" class="table" style="width:500px; margin:0 auto;">
<br><br>
<h3 align="center" >贫困户跟进</h3><br>
<tr >
	<td>学生姓名</td>
	<td align="center">${PkhList.pxm }</td>
</tr>
<tr>
	<td>是否已脱贫</td>
	<td><input type="radio" name="pzt" value="预脱贫" style="margin-left:90px;"/>预脱贫<input type="radio" name="pzt" value="已脱贫" style="margin-left:20px;"/>已脱贫</td>
</tr>
<tr>
	<td>帮扶前年均收入(万)</td>
	<td align="center">${PkhList.pgold}</td>
</tr>
<tr>
	<td>录入脱贫后年均收入(万)</td>
	<td><input style="width: 300px;height:20px;border-style:none;" type="text" name="pngold" class="form-control" value="${PkhList.pngold}"/></td>
</tr>
<tr>
	<td>录入如今生活状态(万)</td>
	<td><textarea rows="8" cols="35" name="ptpzt" class="form-control">${PkhList.ptpzt}</textarea></td>
</tr>
</table>
 <br>
		<input style="width:20%;" type="submit" value="完成">
			</center>
</form>
</body>
<script type="text/javascript">
</script>
</html>