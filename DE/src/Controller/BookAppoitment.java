package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;

@WebServlet("/BookAppoitment")
public class BookAppoitment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String docid = request.getParameter("doc");
		String pname = null;
		String pemail = null;
		HttpSession hs = request.getSession(); 
		Double paadhar = Double.parseDouble(hs.getAttribute("aadhar").toString());
		PrintWriter pw = response.getWriter();
		ServletContext context=getServletContext();
		String db=context.getInitParameter("db");
		String dbid=context.getInitParameter("dbid");
		String dbpass=context.getInitParameter("dbpass");
		//pw.println(paadhar);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=(Connection) DriverManager.getConnection(db,dbid,dbpass);
			Statement st = (Statement) connection.createStatement();
			String sql1 = "SELECT * from users WHERE Aadhar="+ paadhar ;
			ResultSet rs = (ResultSet) st.executeQuery(sql1);
			while(rs.next()) {
				//pw.println(rs.getString("username"));
				//pw.print(rs.getString("email"));
				pname = rs.getString("username");
				pemail = rs.getString("email");
			}
			String sql2 = "INSERT INTO aptm (a_did,a_pname,a_pemail,a_paadhar) VALUES "+"('"+docid+"','"+pname+"','"+pemail+"',"+paadhar+")";
			int flag = st.executeUpdate(sql2);
			if(flag > 0) {
				response.sendRedirect("appoitment.jsp");
			}else {
				response.sendRedirect("getdoc.jsp");
			}
		}
		catch(Exception e) {
			System.out.println(e);
		}
	}

}
