package com.edu.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.edu.beans.Member;

public class MemberDAO {

	public Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("org.postgresql.Driver");
			conn = DriverManager.getConnection("jdbc:postgresql://192.168.56.201:5432/test", "test", "test1234");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public void insertMember(Member member) {
		try {
			Connection conn = this.getConnection();
			PreparedStatement pstmt = conn.prepareStatement("insert into member values(?,?,?,?)");
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPasswd());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getMail());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
