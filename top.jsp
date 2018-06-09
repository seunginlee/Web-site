<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width 
initial-scale=1;">
<link href="css/bootstrap.css" rel="stylesheet">
<title>한세고등학교</title>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<a class="navbar-brand" href="main.jsp">한세고등학교</a>
			<button type="button" class="navbar-toggle" 
			data-toggle="collapse" data-target="#navbar">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			</button>
		</div>
		<div id="navbar" class="navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="list.do?bType=1">공지사항</a></li>
				<li><a href="list.do?bType=2">자유게시판</a></li>
				<li><a href="list.do?bType=3">칭찬게시판</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">회원메뉴</a>
					<ul class="dropdown-menu">
					<%
						Object obj = session.getAttribute("userID");
						String pUserID = (String) obj;
						if(pUserID != null) {
					%>
						<li><a href="logoutAction.jsp">로그아웃</a></li>
					 
					<%
						}
						else {
					%>
						<li><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					<%
						}
					%>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
</body>
</html>