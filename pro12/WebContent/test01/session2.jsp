<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	//session 객체에 바인딩된 name값을 가져옴
	//String name = (String)session.getAttribute("name");
	//session 객체에 address를 저장(adress : 부산 남구)
	//session.setAttribute("address", "부산 남구");	

	//session 객체에 바인딩된 name값과 address 값을 가져옴
	String name = (String)session.getAttribute("name");  
	String address = (String)session.getAttribute("address");
%>    
 
<!DOCTYPE html>     
<html>
<head>
	<meta charset="UTF-8">
	<title>session 내장 객체 테스트2</title>
</head>
<body>
    이름은 <%=name %>입니다.<br>
    주소는 <%=address %>입니다. 
</body>
</html>