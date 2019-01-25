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
import javax.servlet.http.HttpSession;

import com.connection.manager.ConnectionManager;

@WebServlet("/personal")
public class Personal extends HttpServlet {

	
	private static final long serialVersionUID = -8704401269066774443L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
				
		String fname=request.getParameter("fname");
		String mname=request.getParameter("mname");
		String lname=request.getParameter("lname");
		String address=request.getParameter("add");
		String pin=request.getParameter("pin");
		String country=request.getParameter("country");
		String state=request.getParameter("state"); 
		String city=request.getParameter("city");
		String email=request.getParameter("email");
		String pmobile=request.getParameter("pmobile"); 	
		String smobile=request.getParameter("smobile");
		
		
		try{
			
			Connection con=ConnectionManager.getConnection();
			PreparedStatement ps=null;
			ps=con.prepareStatement("insert into studpersonal(firstname,middlename,lastname,address,pin,"
					+ "country,state,city,email,primarymobileno,secondarymobileno) "
					+ "values(?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, fname);
			ps.setString(2, mname);
			ps.setString(3, lname);
			ps.setString(4, address);
			ps.setString(5, pin);
			ps.setString(6, country); 
			ps.setString(7, state);
			ps.setString(8, city);
			ps.setString(9, email); 
			ps.setString(10, pmobile);
			ps.setString(11, smobile);
		
			ps.executeUpdate();
			
			System.out.println("database successfully entered");
			HttpSession session=request.getSession();
			session.setAttribute("country", country);
			session.setAttribute("state", state);
			session.setAttribute("city", city);
		
			response.sendRedirect("stuProfile.jsp");  
			con.close();
			ps.close();
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
		
		}
		
	
	}

}
