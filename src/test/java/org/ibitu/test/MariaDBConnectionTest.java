package org.ibitu.test;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class MariaDBConnectionTest {

	private static final String DRIVER = "org.mariadb.jdbc.Driver";

	private static final String URL = "jdbc:mariadb://14.32.66.127:3308/ibitu";

	private static final String USER = "user32";
	private static final String PW = "user32";

	@Test
	public void testConnection() throws Exception {
		Class.forName(DRIVER);

		try (Connection con = DriverManager.getConnection(URL, USER, PW)) {
			System.out.println(con);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
