package com.cedu.commons;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

//import com.itextpdf.text.log.SysoLogger;



public class JavaMailClass {

	public static void sendemail(String toemailid, String messagepart, String sub) throws IOException {
		System.out.println("sending email in java mail class");
		String to = toemailid; // receiver email id
		String mess = messagepart
				+ " <br><b>Thank You,</b><br><b>EyberEdu</b></p><br><br><hr><small>Please make sure to check your junk/spam folder for a mail from info.cyberedu@gmail.com for the same.<br>"
				+ " Thank you for choosing us. Should you have any query/concern/suggestion please contact us on +91 00 00000000 or mail us at info.cyberedu@gmail.com<br>"
				+ " Please do not reply to this email; this address is not monitored. Please contact us on  <a href=info.cyberedu@gmail.com</a> or <a href=mailto:info.cyberedu@gmail.com>info.cyberedu@gmail.com</a></small> ";

		String subject = sub; // setting sender mail id and password

		ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
		InputStream fis = classLoader.getResourceAsStream("configuration.properties");
		

		Properties ptr = new Properties();
		ptr.load(fis);

		String login = ptr.getProperty("mail");
		String password = ptr.getProperty("mailpass");

		System.out.println(mess);

		try {
			Properties props = new Properties();
			props.setProperty("mail.host", "smtp.gmail.com");
			props.setProperty("mail.smtp.port", "587"); // keep it 587
			props.setProperty("mail.smtp.auth", "true");
			props.setProperty("mail.smtp.starttls.enable", "true");

			Authenticator auth = new SMTPAuthenticator(login, password);

			Session session = Session.getInstance(props, auth);

			MimeMessage msg = new MimeMessage(session);
			msg.setSubject(subject);
			msg.setContent(mess, "text/html"); // by sunny
			msg.setFrom(new InternetAddress(login));
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			//msg.addRecipient(Message.RecipientType.BCC, new InternetAddress(login)); 
			/* changes made by darshit bcc */
			Transport.send(msg);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	private static class SMTPAuthenticator extends Authenticator {
		private PasswordAuthentication authentication;

		public SMTPAuthenticator(String login, String password) {
			authentication = new PasswordAuthentication(login, password);
		}

		protected PasswordAuthentication getPasswordAuthentication() {
			return authentication;
		}
	}
	public static void main(String args[]) {
		try {
			sendemail("chillevishal@gmail.com","hey rupesh you made to send mail","just to test");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
