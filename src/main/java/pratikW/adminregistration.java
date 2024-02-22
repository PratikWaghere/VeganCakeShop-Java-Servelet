package pratikW;

import java.io.*;
import java.sql.*;

import java.sql.DriverManager;
import java.sql.Connection;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class adminregistration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String fname = request.getParameter("admin-name");
		String lname = request.getParameter("admin-lname");
		String email = request.getParameter("adminemail");
		String number = request.getParameter("admin-contact");
		String password = request.getParameter("admin-password");
		String cpassword = request.getParameter("a-cpassword");

		RequestDispatcher res = null;

		if (fname == null || fname.length() < 1 || lname == null || lname.length() < 1) {
			request.setAttribute("status", "invalidname");
			res = request.getRequestDispatcher("regitation.jsp");
			res.forward(request, response);
		} else if (email.equals("")) {
			request.setAttribute("status", "invalidemail");
			res = request.getRequestDispatcher("regitation.jsp");
			res.forward(request, response);
		} else if (number == null) {
			request.setAttribute("status", "invalidnumber");
			res = request.getRequestDispatcher("regitation.jsp");
			res.forward(request, response);
		} else {

			Connection con = null;

			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con = DriverManager.getConnection(
						"jdbc:mysql://localhost:3306/pratikw?allowPublicKeyRetrieval=true&useSSL=false", "root",
						"prajyot123");
				PreparedStatement pst = con.prepareStatement(
						"insert into admindata(adminusername , adminemail , admincontact , apassword , lastname) values (? , ? , ? , ? , ?)");
				pst.setString(1, fname);
				pst.setString(2, email);
				pst.setString(3, number);
				pst.setString(4, password);
				pst.setString(5, lname);

				int rowcount = pst.executeUpdate();

				if (rowcount > 0) {
					request.setAttribute("status", "success");
					res = request.getRequestDispatcher("adminlogin.jsp");
				} else {
					request.setAttribute("status", "failed");
					res = request.getRequestDispatcher("adminregistration.jsp");
				}
				res.forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
}

}
