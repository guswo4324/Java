<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="java.util.*, sec01.ex01.*" pageEncoding="UTF-8"
    isELIgnored="false" %>
    
 <%
 	request.setCharacterEncoding("UTF-8");
 	List membersList = new ArrayList();
 	
 	MemberBean m1 = new MemberBean("Lee", "1234", "수", "LEE@LEE.com");
 	MemberBean m2 = new MemberBean("son","1234", "민", "SON@SON.com");
 	
 	membersList.add(m1);
 	membersList.add(m2);
 	
 	request.setAttribute("membersList", membersList);
 %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>forward3</title>
	</head>
	<body>
		<jsp:forward page="member3.jsp" />
	</body>
</html>