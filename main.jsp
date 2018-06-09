<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width 
initial-scale=1;">
<link href="css/bootstrap.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/
ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/
bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>한세고등학교</title>
<style>
	.jumbotron {
		background-image:url('image/bg_img.jpg');
		background-repeat: no-repeat;
		background-size : 100%;
		text-align:center;			
	}
</style>
</head>
<body>
<div class="container">
	<jsp:include page="top.jsp"></jsp:include>
	<%
		Object obj= session.getAttribute("userID");
		String pUserID = (String) obj;
		if (pUserID != null) {
	%>
			<div class="jumbotron">
				<h1>로그인이 정상적으로 처리되었습니다.</h1>
			</div>
	<%
		}
		else  {
	%>
		<div class="jumbotron">
			<h1>게시판을 만들어봅시다.</h1>
			<p> jsp를 이용하여 만들어 봅니다.</p>
			<p> mysql과 연동합니다.</p>
			<p> bootstrap을 이용해 디자인합니다.</p>
		</div>
	<%
		}
	%>
</div>
</body>
</html>