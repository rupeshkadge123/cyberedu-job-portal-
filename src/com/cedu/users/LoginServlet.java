package com.cedu.users;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.connection.manager.ConnectionManager;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private static final Logger logger = Logger.getLogger(LoginServlet.class);

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		/*
		 * response.setContentType("text/html"); PrintWriter out = response.getWriter();
		 */

		String n = request.getParameter("username"); // get user id from ui
		String pass = request.getParameter("userpass"); // get password from ui
		System.out.println(n);
		System.out.println(pass);
		String p = null;
		int userid = 0;

		// code for encrypting password accepted from user to sha1 for comparision
		// ...................................
		String password = pass; // random password generated pw and convert to hex code
		String encryptpass = null;
		MessageDigest md;

		/*
		 * try {
		 * 
		 * md = MessageDigest.getInstance("SHA-256"); md.update(password.getBytes());
		 * byte byteData[] = md.digest(); //convert the byte to hex format method 1
		 * StringBuffer sb = new StringBuffer(); for (int i = 0; i < byteData.length;
		 * i++) { sb.append(Integer.toString((byteData[i] & 0xff) + 0x100,
		 * 16).substring(1)); } encryptpass = sb.toString(); p = sb.toString();
		 * System.out.println("Hex format : " + sb.toString()); } catch
		 * (NoSuchAlgorithmException e1) { e1.printStackTrace(); }
		 */
		// code for encrypting password accepted from user to sha1 for comparision
		// ...................................

		HttpSession session = request.getSession();
		System.out.println(session.getId());
		if (!session.isNew()) {
			session.invalidate();
			session = request.getSession();
			session.setMaxInactiveInterval(0);
			System.out.println(session.getId());

		}

		// code for setting session going to header
		try {
			Connection conn = ConnectionManager.getConnection();
			System.out.println("conn login servlet user id get");
			String getid = "select userid,email from applogin " + " where email = ?";
			PreparedStatement stmtp = conn.prepareStatement(getid);
			stmtp.setString(1, request.getParameter("username"));
			ResultSet res = stmtp.executeQuery();
			System.out.println("executed");

			while (res.next()) {
				int usr_id = res.getInt("userid");
				String loginUser = res.getString("email");
				logger.info("User " + loginUser + " trying to login");
				System.out.println("User ID:" + usr_id);
				System.out.println("User Email : " + loginUser);

				session.setAttribute("usridInSession", usr_id);
				session.setAttribute("usremailInSession", loginUser);
				userid = res.getInt("usr_id");
			}

		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e.getMessage(), e);
		}

		int usr_id = Integer.parseInt(n);
		System.out.println(usr_id);
		session.setAttribute("usridInSession", usr_id);
		// code for setting session going to header

		System.out.println("User Successfully Logged in");
		logger.info("User " + request.getParameter("username") + " Successfully Logged in");
		RequestDispatcher rd=request.getRequestDispatcher("LoginDao");  
		//servlet2 is the url-pattern of the second servlet  
		  
		rd.forward(request, response);//method may be include or forward 
	} // if login dao cloases here
	 
	/*
	 * else{ RequestDispatcher rd=request.getRequestDispatcher("ProUserLogin.jsp");
	 * request.setAttribute("errorMessage", "Invalid Username or Password");
	 * logger.error("Invalid User Name or Password for " +
	 * request.getParameter("username"));
	 * rd.include(request,response); 
	 * }
	 */
	/* out.close(); */
}
