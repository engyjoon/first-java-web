<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%
	// 1. JDNI 서버 객체 생성
	InitialContext ic = new InitialContext();

	// 2. lookup()
	DataSource ds = (DataSource) ic.lookup("java:comp/env/jdbc/mypgsql");
	
	// 3. getConnection()
	Connection conn = ds.getConnection();
	
	// 4. Statement or PreparedStatement 객체 생성하기
	Statement stmt = conn.createStatement();
	
	// 5. SQL 실행
	ResultSet rs = stmt.executeQuery("select * from test");
	
	while (rs.next()) {
		out.print("<br>" + rs.getString("id") + ":" + rs.getString(2));
	}
	
	// 5. 자원해제
	rs.close();
	stmt.close();
	conn.close();
%>