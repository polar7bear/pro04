<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="path1" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세</title>
</head>
<body>
	<table class="table">
		<tbody>
			<tr>
				<th>글 번호</th>
				<td>${notice.no }</td>
			</tr>
			<tr>
				<th>글 제목</th>
				<td>${notice.title }</td>
			</tr>
			<tr>
				<th>글 내용</th>
				<td>${notice.content }</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${notice.author }</td>
			</tr>
			<tr>
				<th>작성일</th>
				<td>${notice.resdate }</td>
			</tr>
			<tr>
				<th>조회수</th>
				<td>${notice.visited }</td>
			</tr>
			<tr>
				<td colspan="3">
				<a href="${path1 }/notice/update.do?no=${notice.no }">글 수정</a>
				<a href="${path1 }/notice/delete.do?no=${notice.no }">글 삭제</a>
				<a href="${path1 }/notice/list.do">글 목록</a>
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>