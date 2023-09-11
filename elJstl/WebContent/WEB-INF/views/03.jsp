<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>el-jstl</h1>
	<h2>el</h2>
	<h3>파라미터 값 처리</h3>


<!--  request 영역의 변수의 값 꺼내쓰는 테스트
		http://localhost:8000/elJstl/03?id=you&pw=1111&name=%EC%9E%AC%EC%84%9D&num1=100&num2=200-->

	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
	%>
	
	id= <%=id%> <br>
	pw= <%=pw%> <br>
	name= <%=name%> <br>
	num1= <%=num1%> <br>
	num2= <%=num2%> <br>

	<h4>el 사용</h4>
	
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>





</body>
</html>