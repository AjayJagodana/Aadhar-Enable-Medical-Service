package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;
import java.util.*;


public class Appoitment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String country = request.getParameter("country");
		String state = request.getParameter("state");
		String city = request.getParameter("city");
		ServletContext context=getServletContext();
		String db=context.getInitParameter("db");
		String dbid=context.getInitParameter("dbid");
		String dbpass=context.getInitParameter("dbpass");
		try {
			int count = 1;
			PrintWriter pw = response.getWriter();
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=(Connection) DriverManager.getConnection(db,dbid,dbpass);
			Statement st = (Statement) connection.createStatement();
			String sql = "SELECT ho_name FROM hospital WHERE ho_country='"+country+"' AND ho_state='"+state+"' AND 	ho_city='"+city+"' ORDER BY ho_name ASC";
			ResultSet rs = (ResultSet) st.executeQuery(sql);
  			HttpSession hs = request.getSession();
  			List l = new ArrayList();
  		
			while(rs.next()) 
			{
				String val = rs.getString("ho_name");
				l.add(val);
			}
			hs.setAttribute("list", l);
			response.sendRedirect("filter.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
