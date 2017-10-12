<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>example33</title>
</head>
<body>
	<ul>
		<c:forEach var="no" begin="1" end="6">
			<li><a href="jstl0${no}.jsp">JSTL 예제 ${no}</a></li>
		</c:forEach>
	</ul>
</body>
</html>