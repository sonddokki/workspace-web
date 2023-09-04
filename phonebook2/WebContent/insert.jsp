<%@page import="com.javaex.vo.PersonVo"%>
<%@page import="com.javaex.dao.PersonDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");

	PersonVo personVo = new PersonVo();
	personVo.setName(name);
	personVo.setHp(hp);
	personVo.setCompany(company);
	
	System.out.println(personVo);
	
	PersonDao personDao = new PersonDao();
	int count = personDao.personInsert(personVo);
	System.out.println(count);
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
df



</body>
</html>