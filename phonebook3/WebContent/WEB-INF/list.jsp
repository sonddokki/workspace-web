<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.PersonDao" %>
<%@ page import="com.javaex.vo.PersonVo" %>
<%@ page import="java.util.List" %>
    
 <%
 	// request의 어트리뷰트 영역에 있는 data를 꺼내온다.
 	List<PersonVo> personList = (List<PersonVo>)request.getAttribute("pList");
 
 %>
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<h1>전화번호부</h1>
	<h2>리스트</h2>
	
	<p>등록된 전화번호 리스트 입니다.<p>
	<%for(int i=0;i<personList.size();i++) {%>
	
		<table border="1">
			<%--<tr>
				<td>코드</td> <td><%=personList.get(i).getPersonId()%></td>			
			</tr> --%> 
			<tr>
				<td>이름(name)</td> <td><%=personList.get(i).getName()%></td>			
			</tr>
			<tr>
				<td>핸드폰(hp)</td> <td><%=personList.get(i).getHp()%></td>		
			</tr>
			<tr>
				<td>회사(company)</td> <td><%=personList.get(i).getCompany()%></td>			
			</tr>
			
			<tr>
				<td> <a href="./pbc?action=uFrom&id=<%=personList.get(i).getPersonId()%>&name=<%=personList.get(i).getName()%>&hp=<%=personList.get(i).getHp()%>&company=<%=personList.get(i).getCompany()%>">[수정]</td>
				<td> <a href="./pbc?action=delete&id=<%=personList.get(i).getPersonId()%>">[삭제]</a> </td>	
			</tr>
			
		</table>
		<br>
	
	<% }%>
	
	
	<%-- <a href="http://localhost:8000/phonebook2/writeForm.jsp">전화번호 등록품</a> --%>
	<a href="./pbc?action=wfrom">전화번호 등록품</a>













</body>
</html>