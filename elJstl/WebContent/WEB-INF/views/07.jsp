<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% 
	// 값 넣기 (별명,값)
	//pageContext.setAttribute("name", "page name");
	request.setAttribute("name", "request");
	session.setAttribute("name", "session");
	application.setAttribute("name", "application");


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
	<h3>scope변수의 범위</h3>
	
	<h4>스크립틀릿 사용</h4>
	pageName = <%=pageContext.getAttribute("name")%> <br>
	requestName = <%=request.getAttribute("name")%> <br>
	sessionNmae = <%=session.getAttribute("name")%> <br>
	applicationNmae = <%=application.getAttribute("name")%> <br>
	<br>
	<br>
	<br>
	<h4>el 사용</h4>
	pageName = ${pageScope.name} <br>
	requestName = ${requestScope.name} <br>
	sessionNmae = ${sessionScope.name} <br>
	applicationNmae = ${applicationScope.name} <br>
	<br>
	<br>
	<br>
	<h4>el 사용 (Scope생략)</h4>
	pageName = ${name} <br>
	requestName = ${name} <br>
	sessionNmae = ${name} <br>
	applicationNmae = ${name} <br>




</body>
</html>