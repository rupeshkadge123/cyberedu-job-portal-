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

@WebServlet("/entrylog")
public class entrylog extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				HttpSession session=request.getSession();
				int userid=(Integer)session.getAttribute("usridInSession");
				String email=(String)session.getAttribute("usremailInSession");
				String pass=(String)session.getAttribute("pass");
				

		try {
			Connection con = ConnectionManager.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into applogin(userid,email,password,lastlogindate)values(?,?,?,now())");
			
			ps.setInt(1, userid);
			ps.setString(2, email);
			ps.setString(3, pass);
			
			 ps.executeUpdate();
			 System.out.println("done");
			 RequestDispatcher rd = request.getRequestDispatcher("stuDashboard.jsp");
				rd.include(request, response);
			 ps.close();
			 
		}	
		catch (Exception e) {
						e.printStackTrace();

					}
		
        
	}

}
