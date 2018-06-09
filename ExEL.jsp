<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="user" class="user.userDTO" scope="page"></jsp:useBean>
<jsp:setProperty property="userID" name="user" value="jek"/> 
<jsp:setProperty property="userPassword" name="user" value="1234"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%= 10 %><br>
	<%= 99.99 %><br>
	<%= "ABC" %><br>
	<%= true %><br>
	
	${10}<BR>
	${99.99}<BR>
	${"ABC"}<BR>
	${true}<BR>
	
	아이디 : ${user.userID } <BR>
	패스워드 : ${user.userPassword } <BR>
	
</body>
</html>