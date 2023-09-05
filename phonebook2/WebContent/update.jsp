<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.PersonDao"%>
<%@ page import="com.javaex.vo.PersonVo"%>
<%@ page import="java.util.List" %>

<%
	int personId = Integer.parseInt(request.getParameter("personId"));
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");

	PersonVo personVo = new PersonVo();
	personVo.setPersonId(personId);
	personVo.setName(name);
	personVo.setHp(hp);
	personVo.setCompany(company);
	
	PersonDao personDao = new PersonDao();
	int count = personDao.personUpdate(personVo);
	System.out.println(count);
	
	// 리스트 보여주기 --> 리스트로 리다이렉트
		response.sendRedirect("./list.jsp");

%>





<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>