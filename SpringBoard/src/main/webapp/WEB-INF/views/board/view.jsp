<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
<title>게시판 조회</title>
</head>
<body>
	<div id="nav">
		<%@ include file="../include/nav.jsp" %>
	</div>
	
	<h2>${view.title}</h2>
	
	<label>작성자 : </label>
	${view.writer}<br />
	
	<label>내용 : </label>
	${view.content}<br />
	
	<div>
		<a href="/board/modify?bno=${view.bno}">수정</a>, <a href="/board/delete?bno=${view.bno}">삭제</a>
	</div>
</body>
</html>