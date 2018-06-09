<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.userDAO" %>
<%@ page import="java.io.PrintWriter" %>
<jsp:useBean id="user" class="user.userDTO" scope="page"></jsp:useBean>
<jsp:setProperty property="userID" name="user"/> 
<jsp:setProperty property="userPassword" name="user"/> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String userID = request.getParameter("userID");
		String userPassword = request.getParameter("userPassword");
		
		System.out.println(userID);
		System.out.println(userPassword);
		
		userDAO userDAO = new userDAO();
		PrintWriter script = response.getWriter();
		
		int Result = userDAO.login(user);
		
		if (Result==1) {
			session.setAttribute("userID", userID);
			System.out.println("로그인 성공");
			script.println("<script>");
			script.println("location.href='main.jsp'");
			script.println("</script>");
		}
		else if (Result==0 ) {
			System.out.println("아이디나 패스워드가 다릅니다.");
			script.println("<script>");
			script.println("history.back();");
			script.println("</script>");
		}
		else if (Result<0 ) {
			System.out.println("데이터베이스에 오류가 있습니다.");
			script.println("<script>");
			script.println("history.back();");
			script.println("</script>");
		}	
 %>

</body>
</html>