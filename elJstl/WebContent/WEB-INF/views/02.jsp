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
	<h3>연산자</h3>
	
	${10+5} + ${5} <br>
	
	\${5+2} --> ${5+2} <br>
	\${5-2} --> ${5-2} <br>
	\${5*2} --> ${5*2} <br>
	
	\${5/2} --> ${5/2} <br>
	\$//{5 div 2} --> $//{5 div 2} <br>
	
	\${5%2} --> ${5%2} <br>
	\${5 mod 2} --> ${5 mod 2} <br>
	
	<h4>관계연산자</h4>
	\${5<2} --> ${5<2} <br>
	\${5 lt 2} --> ${5 lt 2} <br>
	
	\${5>2} --> ${5>2} <br>
	\${5 gt 2} --> ${5 gt 2} <br>
	
	\${5<2} --> ${5<2} <br>
	
	\${5<2} --> ${5<2} <br>
	
	<h4>삼항연산자</h4>
	\${5>=2 ? 5 : 2} --> ${5>=2 ? 5 : 2} <br>
	\${5<=2 ? 5 : 2} --> ${5<=2 ? 5 : 2} <br>
	
	<h4>논리연산자</h4>
	
	\${(5 > 2) && (2 < 10)} --> ${(5 > 2) && (2 < 10)} <br>
	
	\${(5 > 2) || (2 < 10)} --> ${(5 > 2) || (2 < 10)} <br>
	
	
	\${!(5 > 2)}  -->  ${!(5 > 2)} <br>
	
	<h4>null 검사</h4>
	\${str} --> ${str} <br>
	
	 변수 str이 null이니?  <br>
	\${empty str} --> ${empty str}<br>
	<br>
	
	\${reqVal} --> ${reqVal} <br>
	\${empty reqVal} --> ${empty reqVal} <br>
	
	<h4>*주의</h4>
	
	
	
	
	
</body>
</html>