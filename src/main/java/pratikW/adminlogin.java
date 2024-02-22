package pratikW;

import java.io.IOException;

import java.sql.*;

import java.sql.DriverManager;
import java.sql.Connection;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class adminlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("adminemail");
		String password = request.getParameter("adminpassword");


		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/pratikw?allowPublicKeyRetrieval=true&useSSL=false", "root",
					"prajyot123");
			PreparedStatement ps = con
					.prepareStatement("select adminemail , apassword from admindata where adminemail = ? and apassword = ? ");
			ps.setString(1, username);
			ps.setString(2, password);

			ResultSet rs = ps.executeQuery();
			RequestDispatcher re = null;

			if (rs.next()) {
				request.setAttribute("status-login", "success");
				re = request.getRequestDispatcher("adminpanel.jsp");
			} else {
				request.setAttribute("status-login", "failed");
				re = request.getRequestDispatcher("adminlogin.jsp");
			}
//			
			re.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
