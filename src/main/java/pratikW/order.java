package pratikW;

import java.io.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.sql.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class order extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("username");
		String items = request.getParameter("fooditem");
		String details = request.getParameter("details");
		String address = request.getParameter("address");
		String contact = request.getParameter("contact");
		String count = request.getParameter("count");
		String datetime = request.getParameter("time");
//		int c = Integer.parseInt(count);

		RequestDispatcher re = null;
		Connection con = null;
		try {
			LocalDateTime d = LocalDateTime.now();
			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm");
			LocalDateTime start_dateTime = LocalDateTime.parse(datetime, formatter);
			boolean b = start_dateTime.isBefore(d);
			if (b) {
				request.setAttribute("status", "invaliddate");
				re = request.getRequestDispatcher("order.jsp");
				re.forward(request, response);
			} else {

				if (name.equals("") || items.equals("") || details.equals("") || address.equals("")
						|| contact.equals("") || count.equals("") || Integer.parseInt(count) == 0
						|| Integer.parseInt(count) > 10 || datetime.equals("")) {
					request.setAttribute("status", "invaliddata");
					re = request.getRequestDispatcher("order.jsp");
					re.forward(request, response);
				} else {
					try {
						Class.forName("com.mysql.cj.jdbc.Driver");
						con = DriverManager.getConnection(
								"jdbc:mysql://localhost:3306/pratikw?allowPublicKeyRetrieval=true&useSSL=false", "root",
								"prajyot123");
						PreparedStatement ps = con.prepareStatement(
								"insert into orders (username , fooditem , details , address , contact , count  , vdatetime) values (? , ? , ? , ? , ? , ? , ? )");
						ps.setString(1, name);
						ps.setString(2, items);
						ps.setString(3, details);
						ps.setString(4, address);
						ps.setString(5, contact);
						ps.setString(6, count);
						ps.setString(7, datetime);

						int rowcount = ps.executeUpdate();

						if (rowcount > 0) {
							request.setAttribute("status", "success");
							re = request.getRequestDispatcher("index.jsp");
						} else {
							request.setAttribute("status", "failed");
							re = request.getRequestDispatcher("order.jsp");
						}
						re.forward(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}

				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
