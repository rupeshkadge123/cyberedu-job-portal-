package com.cedu.commons;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.cedu.users.UserSignup;
import com.connection.manager.ConnectionManager;


@WebServlet("/SendMailPass")
public class SendMailPass extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static final Logger logger = Logger.getLogger(SendMailPass.class);
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// first check email id and pancard then send mail
		String messageonjsp = null ; 
		
		String username=null;
		/*String gstno=null;*/
		try{
			Connection conn = ConnectionManager.getConnection();
			System.out.println("connected in send mail pass servlet & STX Cleint Forget Password");
			
			String sqlquery = "select usr_email,gst_no from usr_login where usr_email = ?;";
			PreparedStatement queryStatement = conn.prepareStatement(sqlquery);
			
			queryStatement.setString(1, request.getParameter("emailInput"));

			ResultSet rs = queryStatement.executeQuery();

			if(rs.next())
			{
				//for get the name of a user who request for forget password
				username=rs.getString("usr_email");   //getting email id
				/*gstno=rs.getString("gst_no"); */  //getting GST number
				
				System.out.println("Password Reset for " + username);
				
				//Random Password Code
				String SALTCHARS = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
		        StringBuilder salt = new StringBuilder();
		        Random rnd = new Random();
		        while (salt.length() < 8) // length of the random string.
		        {
		            int index = (int) (rnd.nextFloat() * SALTCHARS.length());
		            salt.append(SALTCHARS.charAt(index));
		        }
		        String saltStr = salt.toString();
		        System.out.println(saltStr);
		        
		     // code for encrypting password accepted from user to sha1 for comparision ...................................
				String password = saltStr ;   // random password generated pw and convert to hex code 
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
					e1.printStackTrace();
				}
				// code for encrypting password accepted from user to sha1 for comparision ...................................
		        
		        
		        
		        
		        
		        PreparedStatement psmt = conn.prepareStatement("update usr_login set usr_password=?,first_login_status=0 where usr_email=?");
				psmt.setString(1,encryptpass);
				psmt.setString(2,request.getParameter("emailInput"));
				
				String msgcontent= "Hi " + username + " <br><br>"
									+ "Your Request to reset Password has been accepted."
									+ "<br> Please use following password for logging in.<br><br>"
									+ "<b> "+saltStr+" </b> <br>"
									+ "<br> Please note that this is temporary password and you will have to change the password on first login. <br><br>"
									+ "Thanks.";
				
				JavaMailClass.sendemail(rs.getString("usr_email"),msgcontent,"Password Reset Request");
				
				int row = psmt.executeUpdate();
				
				if(row > 0)
				{
					System.out.println("Password send successfully on registered Email ID Successfully !");
					logger.info("Updated Password send successfully to " + rs.getString("usr_email"));
					
					RequestDispatcher rd=request.getRequestDispatcher("ProUserLogin.jsp");  
					request.setAttribute("chngpasssucs", "Password send successfully on registered Email ID");
					rd.include(request,response);
				}
				psmt.close();
				
			}
			else{
				logger.error("Invalid Email ID");
				RequestDispatcher rd=request.getRequestDispatcher("ProUserLogin.jsp");
				request.setAttribute("errorMessage", "Invalid Email ID");
				rd.include(request,response);
			}
		}
		catch(Exception e)
		{
			messageonjsp = "ERROR: " + e.getMessage(); 
			e.printStackTrace();
		}
	}


}
