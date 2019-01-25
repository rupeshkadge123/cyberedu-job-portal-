package com.cedu.users;

import java.io.IOException;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.cedu.commons.JavaMailClass;
import com.connection.manager.ConnectionManager;

@WebServlet("/UserSignup")
public class UserSignup extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static final Logger logger = Logger.getLogger(UserSignup.class);
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String message = null; 
		
		// message will be sent back to client  
		// insert query in user profile and registartion on sign up

		System.out.println("In User Sign Up servlet conn open");

		// random password generator code .................................

		final Random RANDOM = new SecureRandom();
		/** Length of password. @see #generateRandomPassword() */
		final int PASSWORD_LENGTH = 8;

		// Pick from some letters that won't be easily mistaken for each
		// other. So, for example, omit o O and 0, 1 l and L.
		String letters = "abcdefghjkmnpqrstuvwxyzABCDEFGHJKMNPQRSTUVWXYZ23456789+@";

		String pw = "";
		for (int i=0; i<PASSWORD_LENGTH; i++)
		{
			int index = (int)(RANDOM.nextDouble()*letters.length());
			pw += letters.substring(index, index+1);
		}

		System.out.println("password generated " + pw);

		// random password generator code ...........................................

		//code for sha 1 algoritm for random password generator......................   

		String password = pw ;   // random password generated pw and convert to hex code 
		String encryptpass = null;

		MessageDigest md;
		try {
			md = MessageDigest.getInstance("SHA-256");
			md.update(password.getBytes());

			byte byteData[] = md.digest();

			//convert the byte to hex format method 1
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < byteData.length; i++) 
			{
				sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
			}

			encryptpass = sb.toString(); 
			System.out.println("Hex format : " + sb.toString());

		} catch (NoSuchAlgorithmException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		//code for sha 1 algoritm for random password generator.......................      

		try{
			Connection conn = ConnectionManager.getConnection();

			String sqlquery = "select usr_email,gst_no from usr_login where usr_email = ? or gst_no = ? ";
			PreparedStatement queryStatement = conn.prepareStatement(sqlquery);
			queryStatement.setString(1, request.getParameter("email"));
			queryStatement.setString(2, request.getParameter("gstno"));

			ResultSet rs = queryStatement.executeQuery();

			if(rs.next())
			{
				message ="Email ID or GST number already registered with us."; 
				logger.info("Email ID " + request.getParameter("email") + " or GST number " + request.getParameter("gstno") + " already registered with us.");
				System.out.println("Email Id or GST number already exists...kindly register with different EmailId/GST");
			
			} 

			else
			{

				try{ 

					PreparedStatement stmt = conn.prepareStatement("insert into usr_login(contact_per,usr_email,usr_password, comp_name , usr_contact ,gst_no ,gst_schema) values(?,?,?,?,?,?,?)");
					stmt.setString(1, request.getParameter("contperson"));
					stmt.setString(2, request.getParameter("email"));
					stmt.setString(3,encryptpass);
					stmt.setString(4, request.getParameter("compname")); 
					stmt.setString(5, request.getParameter("mobnum"));
					stmt.setString(6, request.getParameter("gstno"));
					stmt.setString(7, request.getParameter("gstschema"));

					int row = stmt.executeUpdate();
					if (row > 0) {  

						System.out.println("data inserted in usr login table");
						logger.info("User " + request.getParameter("email") + " sign up successfully. Data inserted in usr_lgin table.");

						try{

							PreparedStatement stmtinst = conn.prepareStatement("insert into usr_profile(usr_name,usr_email,comp_name,contact_one,gst_no) values(?,?,?,?,?)");
							stmtinst.setString(1, request.getParameter("contperson"));
							stmtinst.setString(2, request.getParameter("email"));
							stmtinst.setString(3, request.getParameter("compname")); 
							stmtinst.setString(4, request.getParameter("mobnum"));
							stmtinst.setString(5, request.getParameter("gstno"));


							int rowinst = stmtinst.executeUpdate();
							if (rowinst > 0) {  

								System.out.println("data inserted successfully in usr profile table");
								logger.info("Data inserted in usr_profile table.");

								try {

									PreparedStatement stmt1 = conn.prepareStatement("select * from usr_login where usr_email = ?");
									stmt1.setString(1, request.getParameter("email"));

									ResultSet rs1 = stmt1.executeQuery();
									if(rs1.next())
									{
										int usrId = rs1.getInt("usr_id");
										System.out.println("userId is"+ usrId);

										// mail content to client################################				   
										String subject = "Thank you for registering with SmarttradeX";

										String	mess  =  "<p>Dear " + request.getParameter("contperson") + ",<br><br>"
												+ " Thank you for registering with SmarttradeX. We hope and expect that you will have a great experience in using our portal.<br><br> "
												+ " Your username is <b>" + request.getParameter("email") + "</b> and Password is <b>"+ pw +"</b> for the portal www.smarttradex.com <br><br> "
												+ " This is a temporary password and you will be asked to change it at first login. <br><br> ";

										//for sending mail to client for new registration

										String gstSchema = request.getParameter("gstschema"); 

										if(!gstSchema.equals("Composition"))  //not equals compostion
										{
											System.out.println("Email Send Successfully for login credentials");
											message = "Registration completed, Check your email for login credential";

											System.out.println("sending mail for normal gst");
											JavaMailClass.sendemail(request.getParameter("email"),mess,subject);
										}                   
										// mail content to client################################			
										else
										{
											System.out.println("Composition Gst Client Sign up");
											message = "Thanks for your interest in our portal. We will get back to you shortly";
											logger.info(request.getParameter("email") + " Select Composition Gst Scheme.");
										}

									}

								}catch (Exception e) {
									// TODO: handle exception
									e.printStackTrace();
									logger.debug(e.getMessage(),e);
								}
							}
						}	catch (Exception e) {
							// TODO: handle exception
							e.printStackTrace();
							logger.debug(e.getMessage(),e);
						}
					} 

				} catch (Exception e) {
					//	message = "ERROR: " + e.getMessage(); 
					e.printStackTrace();
					logger.debug(e.getMessage(),e);
				}
			}
		}		
		catch(Exception e)
		{
			message = "ERROR: " + e.getMessage(); 
			e.printStackTrace();
			logger.debug(e.getMessage(),e);
		}

		request.getSession().setAttribute("message", message);
		response.sendRedirect("ProUserLogin.jsp");

	}
}
