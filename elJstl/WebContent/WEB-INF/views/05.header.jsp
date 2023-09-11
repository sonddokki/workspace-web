<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vo.UserVo"%>

<!--세션값을 가져온다-->
<%
	UserVo authUser = (UserVo) session.getAttribute("authUser");
	System.out.println(authUser);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>el-jstl</h1>
	<h2>el</h2>
	<h3>session.attribute</h3>

	<h4>스크립틀릿 사용</h4>
	
		<div id="header" class="clearfix">
			
		<%if (authUser != null) {%>
		<ul>
			<li><%=authUser.getName()%>님 안녕하세요^^</li>
			<li><a href="./user?action=logout" class="btn_s">로그아웃</a></li>
			<li><a href="./user?action=modifyForm" class="btn_s">회원정보수정</a></li>
		</ul>
	
		<%} else {%>
		<ul>
			<li><a href="./user?action=loginFrom" class="btn_s">로그인</a></li>
			<li><a href="./user?action=joinFrom" class="btn_s">회원가입</a></li>
		</ul>
		<%}%>
	</div>
	<br>
	<br>
	<br>

	<h4>el 사용</h4>
		<div id="header" class="clearfix">
			
		<%if (authUser != null) {%>
		<ul>
			<li>${sessionScope.authUser.name}님 안녕하세요^^</li>
			<li><a href="./user?action=logout" class="btn_s">로그아웃</a></li>
			<li><a href="./user?action=modifyForm" class="btn_s">회원정보수정</a></li>
		</ul>
	
		<%} else {%>
		<ul>
			<li><a href="./user?action=loginFrom" class="btn_s">로그인</a></li>
			<li><a href="./user?action=joinFrom" class="btn_s">회원가입</a></li>
		</ul>
		<%}%>
	</div>
	<br>
	<br>
	<br>
	
	
	<h4>el sessionScope 생략</h4>
		<div id="header" class="clearfix">
			
		<%if (authUser != null) {%>
		<ul>
			<li>${authUser.name}님 안녕하세요^^</li>
			<li><a href="./user?action=logout" class="btn_s">로그아웃</a></li>
			<li><a href="./user?action=modifyForm" class="btn_s">회원정보수정</a></li>
		</ul>
	
		<%} else {%>
		<ul>
			<li><a href="./user?action=loginFrom" class="btn_s">로그인</a></li>
			<li><a href="./user?action=joinFrom" class="btn_s">회원가입</a></li>
		</ul>
		<%}%>
	</div>
	


</body>
</html>