<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
	<head>
		<meta charset="UTF-8">
		<title>게시판 목록</title>
		<link rel="stylesheet" type="text/css" href="../resources/css/style.css">
	</head>
	
	<body>
	<div id="nav">
		<%@ include file="../include/nav.jsp" %>
	</div>
	
		<table>
			<thead>
		  		<tr>
				   <th>번호</th>
				   <th>제목</th>
				   <th>작성일</th>
				   <th>작성자</th>
				   <th>조회수</th>
		  		</tr>
		 	</thead>
		 
			<tbody>
			  <c:forEach items="${list}" var="list">
			  	<tr>
			  		<td>${list.bno}</td>
			  		<td>
			  			<a href="/board/view?bno=${list.bno}">${list.title}</a>
			  		</td>
			  		<td>
			  			<fmt:formatDate value="${list.regDate}" pattern="yyyy-MM-dd" />
			  		</td>
			  		<td>${list.writer}</td>
			  		<td>${list.viewCnt}</td>
			  	</tr>
			  </c:forEach>
			</tbody>
		
		</table>
	</body>
	<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
</html>