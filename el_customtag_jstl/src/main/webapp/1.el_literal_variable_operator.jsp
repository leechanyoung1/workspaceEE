<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.bean.Guest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%

pageContext.setAttribute("int1", 10);
pageContext.setAttribute("int2", 10);
pageContext.setAttribute("double1", 10);
pageContext.setAttribute("double2", 3.142);
pageContext.setAttribute("string1", "KIM");
pageContext.setAttribute("string2", "경호");
pageContext.setAttribute("bool1", true);
pageContext.setAttribute("bool2", false);
pageContext.setAttribute("married", true);
pageContext.setAttribute("age", 43);
pageContext.setAttribute("weight", 78.33);
pageContext.setAttribute("height", 183);
/*
pageContext.setAttribute("1234", 183);
pageContext.setAttribute("3.14", 183);
*/


%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>EL 리터럴,변수,연산자</h1>
	<hr>
	<ul>
		<li>----EL 리터럴(상수)----</li>
		<li>정수형리터럴:${1234} </li>
		<li>실수형리터럴:${3.14} </li>
		<li>논리형리터럴:${true} </li>
		<li>문자형리터럴:${"문자"} </li>
		<li>문자형리터럴:${'문자'} </li>
		<li>---------EL 변수[SCOPE객체의 속성이름]--------</li>
		<li>${int1}</li>
		<li>${int2}</li>
		<li>${double1}</li>
		<li>${double2}</li>
		<li>${string1}</li>
		<li>${string2}</li>
		<li>${bool1}</li>
		<li>${bool2}</li>
		<li>${married}</li>
		<li>${age}</li>
		<li>${weight}</li>
		<li>${height}</li>
		
		<li>---------EL 연산자--------</li>
		
		<li>----------null or size체크---------</li>
		
		<li>----------null or size체크(empty연산자)---------</li>
		


	</ul>
</body>
</html>







