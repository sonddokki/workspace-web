<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.PersonDao"%>
<%@ page import="com.javaex.vo.PersonVo"%>
<%@ page import="java.util.List" %>

<%
	// 파라미터 꺼내기 (db에 전달해서 확인할 id값)
	int personId = Integer.parseInt(request.getParameter("id"));
	System.out.println(personId);
	
	// personDao의 personUpdate(id)를 통해서 id 불러오기
	PersonDao personDao = new PersonDao();
	
	List<PersonVo> personList = personDao.personSelect("");
	
	%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1><%=personList.get(personId-1).getName()%> 전화번호 수정화면</h1>

	<p> 수정화면입니다. 아래 항목을 수정하고 "수정" 버튼을 클릭하세요. <p>
	
	<table border="1">
		<tr>
			<td>코드(id)</td>
			<td><%=personList.get(personId-1).getPersonId()%></td>
		</tr>
		<tr>
			<td>이름(name)</td>
			<td><%=personList.get(personId-1).getName()%></td>
		</tr>
		<tr>
			<td>핸드폰(hp)</td>
			<td><%=personList.get(personId-1).getHp()%></td>
		</tr>
		<tr>
			<td>회사(company)</td>
			<td><%=personList.get(personId-1).getCompany()%></td>
		</tr>

	</table>
	<br>

	<form action="./update.jsp" method="get">
		<input type="hidden" name="personId" value="<%=personList.get(personId-1).getPersonId()%>"><br>
		이름(name): <input type="text" name="name" value=""><br>
		핸드폰(hp): <input type="text" name="hp" value=""><br>
		회사(company): <input type="text" name="company" value=""><br>
		
		<button type="submit">등록</button>
	</form>





</body>
</html>