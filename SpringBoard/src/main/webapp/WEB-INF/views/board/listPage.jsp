<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="../resources/css/style.css">
	<title>게시판 목록</title>
	</head>
	<body>
	<div id="nav">
		<%@ include file="../include/nav.jsp" %>
	</div>
	<div id="wrap">
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
		
		<div>
			<c:if test="${page.prev}">
				<span>[ <a href="/board/listPage?num=${page.startPageNum - 1}">이전</a> ] </span>
			</c:if>
			
			<c:forEach begin="${page.startPageNum}" end="${page.endPageNum}" var="num">
				<span>
					<c:if test="${select != num}">
						<a href="/board/listPage?num=${num}">${num}</a>
					</c:if>
					
					<c:if test="${select == num}">
						<b>${num}</b>
					</c:if>
				</span>
			</c:forEach>
			
			<c:if test="${page.next}">
				<span>[ <a href="/board/listPage?num=${page.endPageNum + 1}">다음</a> ] </span> 
			</c:if>
		</div>
	</div>
	</body>
	<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
</html>