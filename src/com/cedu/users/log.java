package com.cedu.users;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.digester.SetNestedPropertiesRule;

import com.connection.manager.ConnectionManager;
import com.sun.mail.iap.Response;

@WebServlet("/log")
public class log extends HttpServlet {

	private static final long serialVersionUID = -3560287418800109147L;

public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String message;
		String username = request.getParameter("email");
		String pass = request.getParameter("pass");
		
		System.out.println(username+pass);

		try {
			Connection con = ConnectionManager.getConnection();
			PreparedStatement ps = con.prepareStatement("select email,password from studregistration where email =? and  password=?");

			ps.setString(1, username);
			ps.setString(2, pass);
			
			
			ResultSet rs = ps.executeQuery();
			boolean s=rs.next();
			System.out.println(s);
			
			if (s) {
				System.out.println("here");
				
				HttpSession session = request.getSession();
				System.out.println(session.getId());
				Cookie cookie=new Cookie("username",username);
			    request.getCookies();
				response.addCookie(cookie);
				
				if (!session.isNew()) {
					session.invalidate();
					session = request.getSession();
					session.setMaxInactiveInterval(0);
					
					System.out.println(session.getId());
					
					try{
						Connection conn = ConnectionManager.getConnection();
						System.out.println("conn login servlet user id get");	
						String getid =	"select userid,email from studregistration "+
								" where email = ?";
						PreparedStatement stmtp = conn .prepareStatement(getid);
						stmtp.setString(1,username);
						ResultSet res =stmtp.executeQuery();
						System.out.println("executed");

						while (res.next()) {
							int usr_id = res.getInt("userid");
							String loginUser = res.getString("email");
							
							
//							logger.info("User " + loginUser  + " trying to login");
							
							System.out.println("User ID:"+usr_id);

							System.out.println("User Email : "+loginUser);

							session.setAttribute("usridInSession", usr_id);
							session.setAttribute("usremailInSession", loginUser);
							session.setAttribute("pass", pass);
							System.out.println("Userid Set Sucessfully");
							/*response.sendRedirect("entrylog");*/
							RequestDispatcher rd=request.getRequestDispatcher("entrylog");
							rd.forward(request, response);
						}

					}catch (Exception e) {
						e.printStackTrace();
//						logger.debug(e.getMessage(),e);
					}
				
			}
				
			} else {
				RequestDispatcher rd1 = request.getRequestDispatcher("applogin.jsp");
				request.setAttribute("error","Invalid Email or Password" ); 
				rd1.include(request, response);
				System.out.println("login failed");
			}

		
		} catch (Exception e) {

			e.printStackTrace();
		}

	}

}
