<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
	Class.forName("org.postgresql.Driver");

	String url = "jdbc:postgresql://192.168.56.201:5432/test";
	Connection conn = DriverManager.getConnection(url, "test", "test1234");
	
	Statement stmt = conn.createStatement();
	
	String sql ="create table member(id varchar(10) primary key, passwd varchar(10), name varchar(10), mail varchar(20))";
	stmt.executeUpdate(sql);
	
	out.print("member 테이블이 생성되었습니다.");
	
	stmt.close();
	conn.close();
%>