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
		<form method="post" action="joinAction.jsp" class="form-horizontal" 
		id="joinform">
			<div class="form-group">
				<label for="userID" class="col-md-3 control-label">아이디 
				</label>
				<div class="col-md-6">
					<input type="text" class="form-control" name="userID" 
					id="id" placeholder="아이디를 입력하세요" required="required" /> 
				</div>
			</div>
			<div class="form-group">
				<label for="pw" class="col-md-3 control-label">비밀번호</label>
				<div class="col-md-6">
					<input type="password" class="form-control" 
					name="userPassword" id="pw"
					placeholder="비밀번호를 입력하세요" required="required" />
				</div>
			</div>
			<div class="form-group">
				<label for="name" class="col-md-3 control-label">이름</label>
				<div class="col-md-6">
					<input type="text" class="form-control" name="userName" 
					id="name" placeholder="이름을 입력하세요" required="required" />
				</div>
			</div>
			<div class="form-group" style="text-align: center">
				<div class="btn-group" data-toggle="button">
				<label class="btn btn-primary active">
					<input type="radio" name="userGender" autocomplete="off" 
					value="M" checked>남자
				</label>
				<label class="btn btn-primary">
					<input type="radio" name="userGender" autocomplete="off" 
					value="F" checked>여자
				</label>
				</div>
			</div>				
			<div class="form-group">
				<label for="email" class="col-md-3 control-label">이메일</label>
				<div class="col-md-6">
					<input type="text" class="form-control" name="userEmail" 
					id="email" placeholder="Email을 입력하세요" 
					required="required" /> 
				</div>
			</div>	
			<div class="col-md-12 text-center">
				<input class="btn btn-danger"  type="button" 
				value="작성취소" onclick="location.href='./'"> 
				<input class="btn btn-primary" type="submit" value="회원가입">
			</div>
		</form>
	</div>
</div>

</body>
</html>