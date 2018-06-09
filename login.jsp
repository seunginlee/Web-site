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
	<div class="jumbotron">
		<h1>로그온</h1>
		<form method="post" action="loginAction.jsp">
			<input type="text" class="form-control" name="userID" 
			placeholder="아이디를 넣어주세요." maxlength="20">
			<input type="password" class="form-control" name="userPassword" 
			placeholder="패스워드를 넣어주세요." maxlength="20">
			<button style="top-margin:20px" type="submit" 
			class="btn btn-primary form-control">로그인</button>
		</form>
	</div>
</div>

</body>
</html>