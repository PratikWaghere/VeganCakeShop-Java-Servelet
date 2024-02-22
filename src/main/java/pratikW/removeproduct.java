package pratikW;

import java.io.IOException;

import java.sql.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class removeproduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String fname = request.getParameter("foodname");

		RequestDispatcher res = null;

		if (fname == null || fname.length() < 1 ) {
			request.setAttribute("status", "invaliddata");
			res = request.getRequestDispatcher("removeproduct.jsp");
			res.forward(request, response);
		} else {

			Connection con = null;

			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con = DriverManager.getConnection(
						"jdbc:mysql://localhost:3306/pratikw?allowPublicKeyRetrieval=true&useSSL=false", "root",
						"prajyot123");
				PreparedStatement pst = con.prepareStatement("DELETE FROM products WHERE foodname=?");
				pst.setString(1, fname);

				int rowcount = pst.executeUpdate();

				if (rowcount > 0) {
					request.setAttribute("status", "success");
					res = request.getRequestDispatcher("removeproduct.jsp");
				} else {
					request.setAttribute("status", "failed");
					res = request.getRequestDispatcher("removeproduct.jsp");
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
