package com.test.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	private static MysqlService mysqlService = null;
	
	// DB 접속정보 - 값을 한번 올리면 다시 바꾸지 않음
	// 도메인 뒤에 접속할 데이터베이스명까지 써준다.
	private static final String URL = "jdbc:mysql://localhost:3306/test_240319";
	private static final String ID = "root";
	private static final String PASSWORD = "root";
	
	// query 관련 코드
	private Connection conn;
	private Statement statement;
	private ResultSet res;
	
	// 객체 생성 메소드
	// Singleton 패턴 : MysqlService 라는 객체가 단 하나만 생성될 수 있도록 하는 디자인 패턴
	// 이유: 여러 객체에서 DB에 연결하는 것을 방지하기 위함
	public static MysqlService getInstance() {
		if (mysqlService == null) {
			mysqlService = new MysqlService();
		}
		
		return mysqlService;
	}
	
	// DB 접속 - JDBC 연결
	public void connect() {
		try { // servlet과 mysqlService 중 어느 쪽이 잘못한 지에 따라 try catch거나 다른 예외처리 , 내가 만든 mysqlService 문제이면 내가 해결 -> try catch
			// 1. 드라이버 메모리에 로딩              드라이버 : JDBC
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			// 2. DB 연결(connection)
			conn = DriverManager.getConnection(URL, ID, PASSWORD);
			
			// 3. statement: 쿼리 실행 준비
			statement = conn.createStatement();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	// DB 연결 해제
	public void disconnect() {
		try {
			statement.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	// R / CUD
	// R - read:select
	public ResultSet select(String query) throws SQLException {
		res = statement.executeQuery(query); // servlet 쪽 쿼리에서 잘못될 확률이 매우 높기때문에 위로(servlet) 던진다.
		return res;
	}
	// CUD: insert, update, delete
	public void update(String query) throws SQLException {
		statement.executeUpdate(query);
	}
	
	
	
}
