<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter" %>
<%@page import="user.userDAO" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.userDTO" scope="page">
</jsp:useBean>
<jsp:setProperty property="userID" name="user"/>
<jsp:setProperty property="userPassword" name="user"/>
<jsp:setProperty property="userName" name="user"/>
<jsp:setProperty property="userGender" name="user"/>
<jsp:setProperty property="userEmail" name="user"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width 
initial-scale=1;">
<title>Insert title here</title>
</head>
<body>	
	아이디 : <%= user.getUserID() %>
	패스워드 : <%= user.getUserPassword() %>
	이름 : <%= user.getUserName() %>
	성별 : <%= user.getUserGender() %>
	이메일 : <%= user.getUserEmail() %>
	<%
	PrintWriter script = response.getWriter();
	
	if (user.getUserID()==null ||
			user.getUserPassword()==null ||
			user.getUserName()==null ||
			user.getUserGender()==null ||
			user.getUserEmail()==null 
	)
	{
		script.println("<script>");
		script.println("alter('데이터가 정상적으로 입력되지 않았습니다.')");
		script.println("history.back()");
		script.println("</script>");
	}
	else {
		userDAO userDAO = new userDAO();
		int rowcnt=0;
		rowcnt = userDAO.join(user);
		
		if (rowcnt==1) {
			System.out.println("회원가입 성공");
			int Result = userDAO.login(user);
			if(Result==1) {
				script.println("<script>");
				script.println("alert('회원가입이 성공하셨습니다.');");
				script.println("location.href='main.jsp';");
				script.println("</script>");
			}
			else if(Result==0) {
				script.println("<script>");
				script.println("alert('아이디와 비밀번호를 다시 확인해주세요.');");
				script.println("history.back();");
				script.println("</script>");
			}
			else if(Result<0) {
				script.println("<script>");
				script.println("alert('데이터베이스 오류가 발생했습니다.');");
				script.println("history.back();");
				script.println("</script>");
			}
		}
		else {
			script.println("<script>");
			script.println("alter('중복 데이터가 있거나 데이터베이스 오류가 발생했습니다. ')");
			script.println("history.back()");
			script.println("</script>");
		}
	}
		
	%>
</body>
</html>