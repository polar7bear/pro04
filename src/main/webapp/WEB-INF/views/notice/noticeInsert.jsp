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
<title>공지사항 작성</title>
</head>
<body>
<div class="container">
	<form action="insert.do" method="post">
		<p>글 제목</p>
		<input type="text" name="title" name="title"><br><br>
		<p>글 내용</p>
		<textarea cols="100" rows="20">
		</textarea><br><br><br>
		<input type="submit" value="글 등록">
	</form>
</div>
</body>
</html>