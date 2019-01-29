package com.cedu.users;

import java.io.IOException;
import java.net.ResponseCache;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Formatter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.manager.ConnectionManager;
import com.sun.mail.iap.Response;

@WebServlet("/Experience") 
public class Experience extends HttpServlet {

	
	private static final long serialVersionUID = -8704401269066774443L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try{ 
			Connection con=ConnectionManager.getConnection();
			PreparedStatement ps=null;
			
			ps=con.prepareStatement("insert into studexperience (userid,jobtitle,companyname,companydomain,"
					+ "yearofexperience,ctcofcurrentcompany,"
					+ "joiningdate,technology,project,skill) values(?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1,request.getParameter("userid"));
			ps.setString(2,request.getParameter("jtitle"));
			ps.setString(3,request.getParameter("cname"));
			ps.setString(4,request.getParameter("cdomain"));
			ps.setString(5,request.getParameter("yfexp"));
			ps.setString(6,request.getParameter("ctcofcurcomp"));
			ps.setString(7,request.getParameter("jdate"));
			ps.setString(8,request.getParameter("techused"));
			ps.setString(9,request.getParameter("project"));
			ps.setString(10,request.getParameter("skill"));
			ps.executeUpdate();
			System.out.println("Experience add successfully");
			
			RequestDispatcher rd=request.getRequestDispatcher("stuexperience.jsp");
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
