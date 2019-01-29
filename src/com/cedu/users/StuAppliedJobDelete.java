package com.cedu.users;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.omg.CORBA.Request;

import com.connection.manager.ConnectionManager;

/**
 * Servlet implementation class StuAppliedJobDelete
 */
@WebServlet("/StuAppliedJobde")
public class StuAppliedJobDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String jid=request.getParameter("idjob");
		System.out.println("The deleted value is "+jid);
		try {
			Connection con = ConnectionManager.getConnection();

			int rs;
			PrintWriter pw = response.getWriter();

			PreparedStatement ps = con.prepareStatement("delete FROM cyberedu.appliedjob  where appliedjobid=?");
			ps.setString(1, request.getParameter("idjob"));
//			System.out.println("The deleted value is "+request.getParameter("jid"));
			rs = ps.executeUpdate();
			System.out.println(rs);
			if (rs > 0) {
				RequestDispatcher rd = request.getRequestDispatcher("stuJobApplied.jsp");
				rd.forward(request, response);
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("stuJobApplied.jsp");

				pw.println("Record can not be deleted");
				rd.forward(request, response);
			}

		} catch (SQLException e) {
			System.out.print(e);

		}

	}

}
