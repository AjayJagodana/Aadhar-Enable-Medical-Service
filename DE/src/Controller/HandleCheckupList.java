package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;

@WebServlet("/HandleCheckupList")
public class HandleCheckupList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		//PrintWriter pw = response.getWriter();
		//pw.println(request.getParameter("aid"));
		int id = Integer.parseInt(request.getParameter("aid"));
		String did = request.getParameter("did");
		Double aadhar = Double.parseDouble(request.getParameter("aadhar"));
		String details = request.getParameter("detail") ;
		String medi = request.getParameter("medi") ;
		ServletContext context=getServletContext();
		String db=context.getInitParameter("db");
		String dbid=context.getInitParameter("dbid");
		String dbpass=context.getInitParameter("dbpass");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=(Connection) DriverManager.getConnection(db,dbid,dbpass);
			Statement st = (Statement) connection.createStatement();
			
			String sql1 = "SELECT d_hospital FROM docs WHERE d_did='"+did+"'" ;
			ResultSet r1 = (ResultSet) st.executeQuery(sql1);
			r1.next();
			String hospital = r1.getString("d_hospital");
			
			String sql2 = "INSERT INTO history (h_aadhar,h_hos,h_details,h_medi) values ("+aadhar+",'"+hospital+"','"+details+"','"+medi+"')";
			int flag = st.executeUpdate(sql2);
			if(flag > 0) {
				String sql3 = "UPDATE aptm SET a_flag=1 WHERE a_id="+id;
				int flag2 = st.executeUpdate(sql3);
				if(flag2 > 0)
				{
					response.sendRedirect("checkup.jsp");
				}
				else
				{
					response.sendRedirect("checkupList.jsp");
				}
			}
			else {
				response.sendRedirect("checkupList.jsp");
			}
			
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
	}

}
