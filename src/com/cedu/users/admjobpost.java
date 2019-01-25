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
@WebServlet("/postjob")
public class admjobpost extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		try{ 
			Connection con=ConnectionManager.getConnection();
			PreparedStatement ps=null;
			
			ps=con.prepareStatement("insert into listedjob(jtitle,cname,vaccancies,jdesc,"
					+ "hprocess,skill,"
					+ "jlocation,criteria,"
					+ "qualification,experience,"
					+ "package,bond,Venue,"
					+ "interviewdate,dtapply,"
					+ "ndocument,contact) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1,request.getParameter("jobtitle"));
			ps.setString(2,request.getParameter("companyname"));
			ps.setString(3,request.getParameter("Vaccanies"));
			ps.setString(4,request.getParameter("jobdesc"));
			ps.setString(5,request.getParameter("hiring"));
			ps.setString(6,request.getParameter("technical"));
			ps.setString(7,request.getParameter("joblocation"));
			ps.setString(8,request.getParameter("criteria"));
			ps.setString(9,request.getParameter("Qualification"));
			ps.setString(10,request.getParameter("experience"));
			ps.setString(11,request.getParameter("Package"));
			ps.setString(12,request.getParameter("bond"));
			ps.setString(13,request.getParameter("Venue"));
			ps.setString(14,request.getParameter("interviewdate"));
			ps.setString(15,request.getParameter("deadline"));
			ps.setString(16,request.getParameter("deadline"));
			ps.setString(17,request.getParameter("contact"));
			
			ps.executeUpdate();
			System.out.println("job added successfully");
			
			RequestDispatcher rd=request.getRequestDispatcher("admRecurters.jsp");
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
