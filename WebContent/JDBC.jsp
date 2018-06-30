<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	// 1. JDBC Driver 로딩하기
	Class.forName("org.postgresql.Driver");

	// 2. DB 서버 접속하기
	String url = "jdbc:postgresql://192.168.56.201:5432/test";
	Connection conn = DriverManager.getConnection(url, "test", "test1234");
	
	// 3. Statement or PreparedStatement 객체 생성하기
	Statement stmt = conn.createStatement();
	
	// 4. SQL 실행
	stmt.executeUpdate("create table test(id varchar(5), pwd varchar(5))");
	
	// 5. 자원해제
	stmt.close();
	conn.close();
%>
OK