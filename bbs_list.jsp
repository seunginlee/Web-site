<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<table class="table">
	<tr>
		<td>번호</td>
		<td>이름</td>
		<td>제목</td>
		<td>날짜</td>
		<td>조회수</td>
	</tr>
	<c:forEach items="${list}" var="dto">
	<tr>
		<td>${dto.bID}</td>
		<td>${dto.bName}</td>
		<td><a href="content_view.do?
		bID=${dto.bID}">${dto.bTitle}</a></td>
		<td>${dto.bDate}</td>
		<td>${dto.bHit}</td>
	</tr>
	</c:forEach>
	<tr>
		<td colspan="5" align="center">
		<a href="write_view.do" 
		class="btn btn-primary" 
		role="button">글쓰기</a>
		</td>
	</tr>		
	</table>
</div>

</body>
</html>