<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	request.setCharacterEncoding("UTF-8");
%>

<c:set var="id" value="짱구" scope="page" />
<c:set var="pwd" value="1234" scope="page" />
<c:set var="age" value="${12}" scope="page" />
<c:set var="height" value="${5}" scope="page" />

<html>
	<head>
		<meta charset="UTF-8">
		<title>회원 정보 출력 창</title>
	</head>	
	<body>	
		<table align="center" border="1">		
			<tr align="center" bgcolor="lightgreen">			
				<td width="7%">
					<b>아이디</b>
				</td>				
				<td width="7%">
					<b>비밀번호</b>
				</td>				
				<td width="7%">
					<b>이름</b>
				</td>	
				<td width="7%">
					<b>나이</b>
				</td>	
				<td width="7%">
					<b>키</b>
				</td>	
			</tr>
			<%-- 
			<c:chose> 태그는 switch문 기능 
			<c:when> : 해당 조건 참 
			<c:otherwise> : 모든 조건 거짓 
			--%>
			<c:choose>
				<%-- <c:when test="${name==null}"> --%>
				<%-- "${empty name}" 변수 name이 null이거나 빈 문자열인지 체크 --%>
				<c:when test="${empty name}">
					<tr align="center">
						<td colspan=5>이름을 입력하세요!!</td>
					</tr>
				</c:when>
				
				<%-- name이 정상적이면 회원정보 출력 --%>
				<c:otherwise>
					<tr align="center">
						<td>${id}</td>
						<td>${pwd}</td>
						<td>${name}</td>
						<td>${age}</td>
						<td>${height}</td>
					</tr>
				</c:otherwise>			
			</c:choose>		
		</table>
	</body>
</html>