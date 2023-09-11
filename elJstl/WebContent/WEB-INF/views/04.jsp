<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vo.UserVo"%>

<% UserVo userVo = (UserVo)request.getAttribute("userVo"); %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>el-jstl</h1>
	<h2>el</h2>
	<h3>request.attribute</h3>

	<h4>스크립틀릿 사용</h4> 
	번호 = <%=userVo.getNo()%> <br>
	이름 = <%=userVo.getName()%> <br>
	이메일 = <%=userVo.getEmail()%> <br>
	패스워드 = <%=userVo.getPassword()%> <br>
	성별 = <%=userVo.getGender()%> <br>
	
	<h4>el 사용</h4> 
	
	번호 = ${requestScope.userVo.no} <br>
	이름 = ${requestScope.userVo.name} <br>
	이메일 = ${requestScope.userVo.email} <br>
	패스워드 = ${requestScope.userVo.password} <br>
	성별 =  ${requestScope.userVo.gender} <br>
	
	num = ${requestScope.num}  <br>

	<h4>el 사용 (requestScope 생략)</h4> 
	
	번호 = ${userVo.no} <br>
	이름 = ${userVo.name} <br>
	이메일 = ${userVo.email} <br>
	패스워드 = ${userVo.password} <br>
	성별 =  ${userVo.gender} <br>
	<br>
	num = ${num}  <br>
	str = ${str}  <br>
	

</body>
</html>