package com.cedu.commons;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.connection.manager.ConnectionManager;


public class PhotoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
 	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		    try {
		    	Connection conn = ConnectionManager.getConnection();
  		        PreparedStatement stmt = conn.prepareStatement("select main_cat_icon from stx_main_cat where main_cat_id=?");
		        stmt.setLong(1, Long.valueOf(request.getParameter("main_cat_id")));
		        ResultSet rs = stmt.executeQuery();
		        if (rs.next()) {
		            response.getOutputStream().write(rs.getBytes("main_cat_icon"));
		        }
		        conn.close();
		        
		    } catch (Exception e) {
		        e.printStackTrace();
		    }
	} 
}
