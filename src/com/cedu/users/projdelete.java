package com.cedu.users;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.manager.ConnectionManager;
@WebServlet("/delete3")
public class projdelete extends HttpServlet 
{

	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{      
	System.out.println(request.getParameter("proid"));

	try
	{         
		Connection con=ConnectionManager.getConnection();
		
		 
		  int rs;
		  PreparedStatement ps=con.prepareStatement("delete from studproject where proid=?");
		   ps.setString(1,request.getParameter("proid"));
		  rs= ps.executeUpdate();
		  System.out.println(rs);
		   if(rs > 0){
			   RequestDispatcher rd=request.getRequestDispatcher("stuproject.jsp");
			   rd.forward(request, response);
		   } 
			   else{
				   RequestDispatcher rd=request.getRequestDispatcher("stuproject.jsp");
				    
				   System.out.println("Record can not be deleted");
				   rd.forward(request, response);
			   }
			  
			
		}
			  catch(SQLException e)
		{
			   System.out.print(e.getMessage());
			 }
		}
	}

			 

