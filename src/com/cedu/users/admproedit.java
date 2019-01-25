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

@WebServlet("/Project1")
public class admproedit extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid=request.getParameter("userid");
		String proid=request.getParameter("proid");
		String projecttitle=request.getParameter("projecttitle");
		String domain=request.getParameter("domain");
		String role=request.getParameter("role");
		String technologyused=request.getParameter("technologyused");
		String ptime=request.getParameter("ptime");
		String projectdesc=request.getParameter("projectdesc");
		HttpSession session=request.getSession();
		String useid = (String)session.getAttribute("userid");;
		
		try{
			
			Connection con=ConnectionManager.getConnection();
			PreparedStatement ps=null;
			ps=con.prepareStatement("update studproject set useid=?,"
					+ " projecttitle=?,domain=?,role=?"
					+ ",technologyused=?,ptime=?,projectdesc=? "
					+ "where proid=?");
			
			ps.setString(1, userid);
			ps.setString(2,projecttitle );
			ps.setString(3, domain);
			ps.setString(4, role);
			ps.setString(5,technologyused);
			ps.setString(6,ptime);
			ps.setString(7, projectdesc);
			ps.setString(8, proid);
			ps.executeUpdate();
			System.out.println("database successfully entered");
			
			
			RequestDispatcher rd=request.getRequestDispatcher("admStudentEdit.jsp");  
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


