<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	if ("1".equals(request.getParameter("color"))) {
	%>
	<span style="color: red">빨강</span>
	<%
	} else if ("2".equals(request.getParameter("color"))) {
	%>
	<span style="color: green">녹색</span>
	<%
	} else if ("3".equals(request.getParameter("color"))) {
	%>
	<span style="color: blue">파랑</span>
	<%
	}
	%>



	<c:choose>
		<c:when test="${param.color == 1}">
			<span style="color: red">빨강</span>
		</c:when>

		<c:when test="${param.color eq '2' }">
			<span style="color: green">녹색</span>
		</c:when>

		<c:when test="${param.color == 3 }">
			<span style="color: blue">파랑</span>
		</c:when>

		<c:otherwise> 조건에 만족하지 않을때 </c:otherwise>


	</c:choose>







	<!-- ------------------------------------------------- -->
	<%@ page import="vo.UserVo"%>

	<%
	UserVo authUser = (UserVo) session.getAttribute("authUser");
	%>


	<div id="header">
		<h1>MySite</h1>
		<ul>
			<%
			if (authUser == null) {
			%>
			<!-- 로그인 전 -->
			<li><a href="/mysite/user?a=loginform">로그인</a></li>
			<li><a href="/mysite/user?a=joinform">회원가입</a></li>
			<%
			} else {
			%>
			<!-- 로그인 후 -->
			<li><a href="/mysite/user?a=modifyform">회원정보수정</a></li>
			<li><a href="/mysite/user?a=logout">로그아웃</a></li>
			<li><%=authUser.getName()%>님 안녕하세요^^;</li>
			<%
			}
			%>
		</ul>
	</div>
	<!-- /header -->

	<div id="header">
		<h1>MySite</h1>
		<ul>

			<c:choose>
				<c:when test="${authUser == null}">
					<!-- 로그인 전 -->
					<li><a href="/mysite/user?a=loginform">로그인</a></li>
					<li><a href="/mysite/user?a=joinform">회원가입</a></li>
				</c:when>

				<c:when test="${authUser != null}">
					<!-- 로그인 후 -->
					<li><a href="/mysite/user?a=modifyform">회원정보수정</a></li>
					<li><a href="/mysite/user?a=logout">로그아웃</a></li>
					<li><%=authUser.getName()%>님 안녕하세요^^;</li>
				</c:when>


				<c:otherwise> 조건에 만족하지 않을때 </c:otherwise>


			</c:choose>


		</ul>
	</div>




</body>
</html>