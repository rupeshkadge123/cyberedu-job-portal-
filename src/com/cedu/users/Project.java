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

import org.omg.CORBA.Request;

import com.connection.manager.ConnectionManager;

@WebServlet("/Project") 
public class Project extends HttpServlet {

	
	private static final long serialVersionUID = -8704401269066774443L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{  
		try{ 
			
			Connection con=ConnectionManager.getConnection();
			PreparedStatement ps=null;
		
			
			ps=con.prepareStatement("insert into studproject (useid,projecttitle,domain,role,technologyused,ptime,projectdesc) values(?,?,?,?,?,?,?)");
			ps.setString(1,request.getParameter("useid"));
			ps.setString(2,request.getParameter("ptitle"));
			ps.setString(3,request.getParameter("domain"));
			ps.setString(4,request.getParameter("role")); 
			ps.setString(5,request.getParameter("techused")); 
			ps.setString(6,request.getParameter("ptime"));
			ps.setString(7,request.getParameter("pdesc"));
		
			ps.executeUpdate();
			System.out.println("database successfully entered");
			RequestDispatcher rd=request.getRequestDispatcher("stuProfile.jsp");
			rd.forward(request, response);
			con.close();
			ps.close();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
		
		}
		
	
	}

}
