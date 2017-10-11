<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Result</title>
</head>
<body>
	<% if (request.getMethod().equals("POST")) { %>
		<%
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
	
			// 유효성 체크
			if (id.isEmpty() || pwd.isEmpty()) {
				request.setAttribute("error", "ID 또는 비밀번호를 입력해주세요!");
				RequestDispatcher rd = request.getRequestDispatcher("logInOut5.jsp");
				rd.forward(request, response);
				return;
			}
			
			// 로그인 처리
			if (session.isNew() || session.getAttribute("id") == null) {
				session.setAttribute("id", id);
				out.print("로그인 작업이 완료되었습니다.");
			} else {
				out.print("이미 로그인 상태입니다.");
			}
		%>
	
		<%= id %> / <%= pwd %>
		
	<%
	   } else if (request.getMethod().equals("GET")) {
		   if (session != null && session.getAttribute("id") != null) {
			   session.invalidate();
			   out.print("로그아웃 작업이 완료되었습니다.");
		   } else {
			   out.print("현재 로그인 상태가 아닙니다.");
		   }
	   }
	%>
</body>
</html>