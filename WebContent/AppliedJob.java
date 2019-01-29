package com.cedu.users;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.manager.ConnectionManager;

/**
 * Servlet implementation class AppliedJob
 */
public class AppliedJob extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
		HttpSession session=request.getSession();
		
		Integer userid = (Integer) session.getAttribute("usridInSession");
		String useremail = (String) session.getAttribute("usremailInSession");
		String jobid=(String)session.getAttribute("jobid");
		String cname=request.getParameter("companyname");
		String jtitle=request.getParameter("jobtitle");
		String experience=request.getParameter("experience");
		String skill=request.getParameter("technical");
		System.out.println(userid+useremail+jobid);
	
		
		
try{
			
			Connection con=ConnectionManager.getConnection();
			
			PreparedStatement ps=null;
			ps=con.prepareStatement("insert into appliedjob(userid,jobid,useremail,cname,jtitle,experience,skill) "
					+ "values(?,?,?,?,?,?,?)");
			ps.setInt(1,userid);
			ps.setString(2, jobid);
			ps.setString(3, useremail);
			ps.setString(4, cname);
			ps.setString(5, jtitle);
			ps.setString(6, experience); 
			ps.setString(7, skill);
		
			ps.executeUpdate();
			System.out.println("database successfully entered");
		
			
			RequestDispatcher rd=request.getRequestDispatcher("stuJob.jsp");  
			rd.forward(request, response); 
			ps.close();
			con.close();
	       
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
		
		}
		}
		
		
		
		
	
	}


