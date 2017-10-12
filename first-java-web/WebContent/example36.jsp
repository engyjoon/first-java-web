<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>example36</title>
</head>
<body>
	<textarea rows="10" cols="80">
		<c:import url="http://www.zdnet.co.kr/Include2/ZDNetKorea_News.xml" />
	</textarea>
	
	<c:import var="zdnetRSS" url="http://www.zdnet.co.kr/Include2/ZDNetKorea_News.xml" />
	<textarea rows="10" cols="80">${zdnetRSS}</textarea>
</body>
</html>