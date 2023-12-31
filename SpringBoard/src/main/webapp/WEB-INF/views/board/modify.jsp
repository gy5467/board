<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="../resources/css/style.css">
	<title>게시판 수정</title>
	</head>
	<body>
		<div id="nav">
			<%@ include file="../include/nav.jsp" %>
		</div>
	
		<form method="post">
			<label>제목</label>
			<input type="text" name="title" value="${view.title}" /><br />
			
			<label>작성자</label>
			<input type="text" name="writer" value="${view.writer}" /><br />
			
			<label>내용</label>
			<textarea cols="50" rows="5" name="content">${view.content}</textarea><br />
			
			<button type="submit">완료</button>
		</form>
		
	</body>
	<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
</html>