<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>example31</title>
</head>
<body>
	<%
		ArrayList<String> nameList = new ArrayList<String>();
		nameList.add("홍길동");
		nameList.add("임꺽정");
		nameList.add("일지매");
		nameList.add("주먹대장");
		nameList.add("똘이장군");
		pageContext.setAttribute("nameList", nameList); %>
		<ul>
			<c:forEach var="name" items="${nameList}">
				<li>${name}</li>
			</c:forEach>
		</ul>
</body>
</html>