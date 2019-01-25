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

@WebServlet("/experience123")
public class admexpdel extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String expid=request.getParameter("expid");
		
		
		
		try{
			
			Connection con=ConnectionManager.getConnection();
			PreparedStatement ps=null;
			ps=con.prepareStatement("delete from studexperience where expid=?");
			
			ps.setString(1, expid);
			
			ps.executeUpdate();
			System.out.println("database successfully entered");
			
			
			RequestDispatcher rd=request.getRequestDispatcher("admStudentEdit.jsp");  
			rd.forward(request, response); 
			
	       
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
		
		}
		
	
	
	}
}


