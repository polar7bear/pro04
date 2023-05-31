<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="path1" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html>
<head>
<jsp:include page="./include/head.jsp" />
<meta charset="UTF-8">
	<title>Home</title>
</head>
<body>
<jsp:include page="./include/hd.jsp" />
	<a href="${path1 }/notice/list.do">공지사항</a>
	<h2>메인</h2>
<jsp:include page="./include/ft.jsp" />
</body>
</html>
