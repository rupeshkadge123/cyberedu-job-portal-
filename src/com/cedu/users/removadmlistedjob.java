package com.cedu.users;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.manager.ConnectionManager;

@WebServlet("/remove")
public class removadmlistedjob extends HttpServlet {
	
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String jobidremove = (String) request.getParameter("jobid123");		
		System.out.println("the value =" + jobidremove);
		try {
			Connection con = ConnectionManager.getConnection();
			PreparedStatement ps = con.prepareStatement("delete from  admlistedjob WHERE jobid=?");
			ps.setString(1, jobidremove);

			ps.executeUpdate();
			System.out.println("job removed from admlisted successfully");
			RequestDispatcher rd = request.getRequestDispatcher("admListedCompany.jsp");
			rd.forward(request, response);
			con.close();
			ps.close();
		} catch (Exception e) {
			e.printStackTrace();

		}
	}

}
