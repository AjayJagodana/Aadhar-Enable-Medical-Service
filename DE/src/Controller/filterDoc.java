package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;


@WebServlet("/filterDoc")
public class filterDoc extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//PrintWriter pw = response.getWriter();
		//pw.println(request.getParameter("hname"));
		String hname = request.getParameter("hname");
		ServletContext context=getServletContext();
		String db=context.getInitParameter("db");
		String dbid=context.getInitParameter("dbid");
		String dbpass=context.getInitParameter("dbpass");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=(Connection) DriverManager.getConnection(db,dbid,dbpass);
			Statement st = (Statement) connection.createStatement();
			String sql = "SELECT d_username,d_did from docs WHERE d_hospital ='"+hname+"'";
			ResultSet rs = (ResultSet) st.executeQuery(sql);
	
			HttpSession hs = request.getSession();
  			//List l = new ArrayList();
  			//List l1 = new ArrayList();
			HashMap l = new HashMap();
		
  			while(rs.next()) 
			{
  				String val = rs.getString("d_username");
  				String val2 = rs.getString("d_did");
				l.put(val , val2);
  				//l.add(val);
				//l1.add(val2);
			}
  			hs.setAttribute("list1", l);
  			//hs.setAttribute("list1", l);
  			//hs.setAttribute("list2", l1);
  			response.sendRedirect("getdoc.jsp");
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
	}

}
