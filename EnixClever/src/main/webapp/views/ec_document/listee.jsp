<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문서 분석 리스트</title>
</head>
<body>
<div class="container">
	<h1>문서 분석 리스트</h1>
	<table class="table">
	<thead>
		<tr>
			<th>문서ID</th>
			<th>문서명</th>
			<th>요약정보</th>
			<th>등록자ID</th>
			<th>등록자 이름</th>
			<th>등록일</th>
			<th>공개여부</th>
			<th>첨부문서 개수</th>
			<th>수정일</th>
			<th>조회수</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach items="${list }" var="dto" >
		<tr class="dataRow">
			<td>${dto.DOC_ID }</td>
			<td>${dto.DOC_NAME }</td>
			<td>${dto.DOC_SUMMARY }</td>
			<td>${dto.DOC_AUTHOR_ID }</td>
			<td>${dto.DOC_AUTHOR_NAME }</td>
			<td><fmt:formatDate value="${dto.DOC_CREATION_DATE }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
			<td>${dto.DOC_IS_OPEN }</td>
			<td>${dto.DOC_ATTACH_FILES }</td>
			<td><fmt:formatDate value="${dto.DOC_MODIFY_DATE }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
			<td>${dto.DOC_HIT }</td>
		</tr>
	</c:forEach>
	</tbody>
	</table>
</div>
</body>
</html>