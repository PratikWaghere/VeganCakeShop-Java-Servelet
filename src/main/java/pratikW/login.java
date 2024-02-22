package pratikW;

import java.io.*;
import java.io.IOException;

import java.sql.*;

import java.sql.DriverManager;
import java.sql.Connection;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("email");
		String password = request.getParameter("password");
		
		
		System.out.println("usename is :" + username + "\n password is :" + password);
		
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pratikw?allowPublicKeyRetrieval=true&useSSL=false" , "root" , "prajyot123");
			PreparedStatement ps = con.prepareStatement("select email , upassword from userdata where email = ? and upassword = ? ");
			ps.setString(1, username);
			ps.setString(2, password);
			
			ResultSet rs = ps.executeQuery();
			RequestDispatcher re = null; 
			
			if(rs.next()) {
				request.setAttribute("status-login", "success");
				re =  request.getRequestDispatcher("index.jsp");
			}else {
				request.setAttribute("status-login", "failed");
				re = request.getRequestDispatcher("login.jsp");
			}
//			
			re.forward(request, response);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
