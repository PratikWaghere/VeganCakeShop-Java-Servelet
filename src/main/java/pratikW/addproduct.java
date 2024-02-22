package pratikW;

import java.io.IOException;

import java.sql.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class addproduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String fname = request.getParameter("foodname");
		String fdetail = request.getParameter("fooddetails");
		String imgsrc = request.getParameter("imgsrc");
		String fprice = request.getParameter("price");

		RequestDispatcher res = null;

		if (fname == null || fname.length() < 1 || fdetail == null || fdetail.length() < 1 || imgsrc.equals("")
				|| fprice == null || fprice.equals("")) {
			request.setAttribute("status", "invaliddata");
			res = request.getRequestDispatcher("addproduct.jsp");
			res.forward(request, response);
		} else {

			Connection con = null;

			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con = DriverManager.getConnection(
						"jdbc:mysql://localhost:3306/pratikw?allowPublicKeyRetrieval=true&useSSL=false", "root",
						"prajyot123");
				PreparedStatement pst = con.prepareStatement(
						"insert into products(foodname , fooddetails, imgsrc , foodprice) values (? , ? , ? , ?)");
				pst.setString(1, fname);
				pst.setString(2, fdetail);
				pst.setString(3, imgsrc);
				pst.setString(4, fprice);

				int rowcount = pst.executeUpdate();

				if (rowcount > 0) {
					request.setAttribute("status", "success");
					res = request.getRequestDispatcher("addproduct.jsp");
				} else {
					request.setAttribute("status", "failed");
					res = request.getRequestDispatcher("addproduct.jsp");
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
