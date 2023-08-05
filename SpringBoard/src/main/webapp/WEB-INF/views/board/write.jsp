<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="../resources/css/style.css">
	<title>게시판 작성</title>
	</head>
	<body>
		<div id="nav">
			<%@ include file="../include/nav.jsp" %>
		</div>
		<div id="wrap">
			<form method="post">
				<label>제목</label>
				<input type="text" name="title" /><br />
				
				<label>작성자</label>
				<input type="text" name="writer" /><br />
				
				<label>내용</label>
				<textarea cols="50" rows="5" name="content"></textarea><br />
				
				<button type="submit">작성</button>
			</form>
		</div>
	</body>
	<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
</html>