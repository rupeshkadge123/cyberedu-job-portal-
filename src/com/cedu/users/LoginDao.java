package com.cedu.users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.log4j.Logger;
import org.omg.CORBA.Request;

import com.connection.manager.ConnectionManager;
import com.mysql.cj.xdevapi.Session;

public class LoginDao {
	
	private static final Logger logger = Logger.getLogger(LoginDao.class);
		
	public static boolean validate(String name, String pass) {		
		boolean status = false;
		PreparedStatement pst = null;
		ResultSet rs = null;
		Connection conn =null;
		

		try {
		 conn = ConnectionManager.getConnection();
//			pst = conn.prepareStatement("select * from usr_login where usr_email=? and usr_password=?");
//			pst.setString(1, name);
//			pst.setString(2, pass);
//			rs = pst.executeQuery();
//			status = rs.next();
//			System.out.println("in login dao after login servlet");
		 	
			  
		} catch (Exception e) {
			System.out.println(e);
			logger.debug(e.getMessage(),e);
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (pst != null) {
				try {
					pst.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return status;
	}
}