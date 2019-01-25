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

@WebServlet("/admeducation")
public class admeduedit extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid=request.getParameter("userid");
		String highesteducation=request.getParameter("highesteducation");
		String university=request.getParameter("university");
		String passingyear=request.getParameter("passingyear");
		String grade=request.getParameter("grade");
		String eduid=request.getParameter("eduid");
		HttpSession session=request.getSession();
		String useid = (String)session.getAttribute("userid");;
		
		try{
			
			Connection con=ConnectionManager.getConnection();
			PreparedStatement ps=null;
			ps=con.prepareStatement("update studeducational set userid=?,"
					+ " highesteducation=?,university=?,passingyear=?"
					+ ",grade=? "
					+ "where eduid=?");
			
			ps.setString(1, useid);
			ps.setString(2, highesteducation);
			ps.setString(3, university);
			ps.setString(4, passingyear);
			ps.setString(5,grade);
			
			ps.setString(6, eduid);
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


