package com.enixone.enixclever;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class OracleConnectionTest {

	private static final Logger logger =
			LoggerFactory.getLogger(OracleConnectionTest.class);
	private static final String DRIVER = "oracle.jdbc.driver.OracleDriver";
	private static final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	private static final String USER = "enixclever";
	private static final String PW = "enixone";
	
	@Test
	public void test() throws ClassNotFoundException {
		Class.forName(DRIVER);
		
		try (Connection conn = DriverManager.getConnection(URL, USER, PW)){
			logger.info("오라클에 연결성공");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
}
