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

@WebServlet("/Experience1")
public class admexpedit extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String jobtitle=request.getParameter("jobtitle");
		String companyname=request.getParameter("companyname");
		String companydomain=request.getParameter("companydomain");
		String yearofexperience=request.getParameter("yearofexperience");
		String ctcofcurrentcompany=request.getParameter("ctcofcurrentcompany");
		String joingdate=request.getParameter("joingdate");
		String technology=request.getParameter("technology"); 
		String project=request.getParameter("project");
		String skill=request.getParameter("skill");
		String expid=request.getParameter("expid");
		HttpSession session=request.getSession();
		String useid = (String)session.getAttribute("userid");;
		
		
		try{
			
			Connection con=ConnectionManager.getConnection();
			PreparedStatement ps=null;
			ps=con.prepareStatement("update studexperience set jobtitle=?,"
					+ "companyname=?,companydomain=?,yearofexperience=?,"
					+ "ctcofcurrentcompany=?,joingdate=?,technology=?"
					+ ",project=?,skill=? where expid=?");
			ps.setString(1, jobtitle);
			ps.setString(2, companyname);
			ps.setString(3, companydomain);
			ps.setString(4, yearofexperience);
			ps.setString(5, ctcofcurrentcompany);
			ps.setString(6, joingdate); 
			ps.setString(7,technology);
			ps.setString(8, project);
			ps.setString(9, skill); 
			ps.setString(10, expid);
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


