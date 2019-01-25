package com.cedu.users;

import java.io.IOException;


import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.manager.ConnectionManager;
import com.mysql.cj.protocol.Resultset;

@WebServlet("/education")
public class Education extends HttpServlet {

	
	private static final long serialVersionUID = -8704401269066774443L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try{
			
			Connection con=ConnectionManager.getConnection();
			PreparedStatement ps=null;
			ps=con.prepareStatement("insert into studeducational (userid,highesteducation,university,passingyear,grade)values(?,?,?,?,?)");
			ps.setString(1,request.getParameter("userid"));
			ps.setString(2,request.getParameter("highedu"));
			ps.setString(3,request.getParameter("uni"));
			ps.setString(4,request.getParameter("passyear"));
			ps.setString(5,request.getParameter("grade"));
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
