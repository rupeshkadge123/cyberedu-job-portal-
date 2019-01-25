package com.cedu.users;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.omg.CORBA.Request;

import com.cedu.commons.JavaMailClass;
import com.connection.manager.ConnectionManager;
@WebServlet("/delete2")
public class deleteRecord extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{      
	PrintWriter pw=response.getWriter();

	try
	{          
		Connection con=ConnectionManager.getConnection();
		
		 
		  int rs;
		
		   PreparedStatement ps=con.prepareStatement(" delete FROM studexperience where expid=?");
		   ps.setString(1,request.getParameter("expid"));
		  rs= ps.executeUpdate();
		  System.out.println(rs);
		   if(rs > 0){
			   RequestDispatcher rd=request.getRequestDispatcher("stuProfile.jsp");
			   rd.forward(request, response);
		   }
		   else{
			   RequestDispatcher rd=request.getRequestDispatcher("stuProfile.jsp");
			    
			   pw.println("Record can not be deleted");
			   rd.forward(request, response);
		   }
		   String messagepart="Record delete sucessfully";
		   String sub="Notification";
		   JavaMailClass.sendemail("from header mail id", messagepart, sub);
		
	
	}
		  catch(SQLException e)
	{
		   System.out.print(e.getMessage());
		 
	}
	}
}

		 

