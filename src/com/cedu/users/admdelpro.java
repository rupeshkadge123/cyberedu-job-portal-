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

@WebServlet("/project123")
public class admdelpro extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String proid=request.getParameter("proid");
		
		
		
		try{
			
			Connection con=ConnectionManager.getConnection();
			PreparedStatement ps=null;
			ps=con.prepareStatement("delete from studproject where proid=?");
			
			ps.setString(1, proid);
			
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


