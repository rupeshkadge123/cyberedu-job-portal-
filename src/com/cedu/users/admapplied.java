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

@WebServlet("/applied")
public class admapplied extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String jobid=request.getParameter("jobid");
		try {
			
		Connection con=ConnectionManager.getConnection();
		PreparedStatement ps=con.prepareStatement("select studpersonal.fname,lname,email,cname");
		
		
		RequestDispatcher rd=request.getRequestDispatcher("admApplied.jsp");
		rd.forward(request, response);
		
		
	}catch(Exception e) {
		
	}

}
}
