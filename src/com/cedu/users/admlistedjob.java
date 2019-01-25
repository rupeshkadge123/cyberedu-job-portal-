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

@WebServlet("/admlistedjob")
public class admlistedjob extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String jobid123 = (String) request.getParameter("jid");		
		System.out.println("the value =" + jobid123);
		try {
			Connection con = ConnectionManager.getConnection();
			PreparedStatement ps = con.prepareStatement(
					"INSERT INTO admlistedjob SELECT jobid,jtitle,cname,"
					+ "skill,experience,vaccancies FROM "
					+ "cyberedudb.listedjob WHERE jobid=?");
			ps.setString(1, jobid123);
        
			ps.executeUpdate();
			System.out.println("job added to listedlist successfully");
			RequestDispatcher rd = request.getRequestDispatcher("admRecurters.jsp");
			rd.forward(request, response);
			con.close();
			ps.close();
		} catch (Exception e) {
			
			e.printStackTrace();

		}
	}

}
