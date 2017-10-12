<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>example30</title>
</head>
<body>
	<% pageContext.setAttribute("nameList", new String[] {"홍길동","임꺽정","일지매","주먹대장","똘이장군"}); %>
	<ul>
		<c:forEach var="name" items="${nameList}" begin="2" end="3">
			<li>${name}</li>
		</c:forEach>
	</ul>
</body>
</html>