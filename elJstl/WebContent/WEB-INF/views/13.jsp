<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@ page import="vo.UserVo"%>
	<%@ page import="java.util.List"%>
	<%
	List<UserVo> userList = (List<UserVo>) request.getAttribute("userList");
	%>


	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>이메일</th>
				<th>패스워드</th>
				<th>성별</th>
				<th>status.index</th>
				<th>status.count</th>
			</tr>
		</thead>

		<tbody>

			<c:forEach items="${userList}" var="userVo" varStatus="status">
				<tr>
					<th>${userVo.no}</th>
					<th>${userVo.name}</th>
					<th>${userVo.email}</th>
					<th>${userVo.password}</th>
					<th>${userVo.gender}</th>
					<th>${status.index}</th>
					<th>${status.count}</th>
				</tr>
			</c:forEach>

			<br> -------------------------------------------------------------------
	</table>
	<table border="1">

		</tbody>

		<c:forEach items="${userList}" var="userVo" begin="0" end="7" step="2" varStatus="status">
			<tr>
				<th>${userVo.no}</th>
				<th>${userVo.name}</th>
				<th>${userVo.email}</th>
				<th>${userVo.password}</th>
				<th>${userVo.gender}</th>
				<th>${status.index}</th>
				<th>${status.count}</th>
			</tr>
		</c:forEach>

		</tbody>

		<br> -------------------------------------------------------------------
	</table>
	<table border="1">

		<tbody>
			<%
			for (UserVo vo : userList) {
			%>

			<tr>
				<th><%=vo.getNo()%></th>
				<th><%=vo.getName()%></th>
				<th><%=vo.getEmail()%></th>
				<th><%=vo.getPassword()%></th>
				<th><%=vo.getGender()%></th>
			</tr>

			<%
			}
			%>
		</tbody>

		<br> -------------------------------------------------------------------

	</table>
	<table border="1">
		<%--<tbody>
		<% for(int i = 0; i< userList.size(); i++) { %>
		
		<tr>
			<th><%=userList.get(i).getNo()%></th>
			<th><%=userList.get(i).getName()%></th>
			<th><%=userList.get(i).getEmail()%></th>
			<th><%=userList.get(i).getPassword()%></th>
			<th><%=userList.get(i).getGender()%></th>		
		</tr>
		
		<% } %>
		</tbody>	
		--%>

	</table>






</body>
</html>