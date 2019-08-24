package Controller;

import java.io.IOException;
//import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.math.BigInteger; 
import java.security.MessageDigest; 
import java.security.NoSuchAlgorithmException; 

public class PatientReg extends HttpServlet  {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		//PrintWriter pw = response.getWriter();
		response.setContentType("text/html");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		double aadhar = Double.parseDouble(request.getParameter("aadhar"));
		String password = request.getParameter("password");
		ServletContext context=getServletContext();
		String db=context.getInitParameter("db");
		String dbid=context.getInitParameter("dbid");
		String dbpass=context.getInitParameter("dbpass");
		//pw.write(username + email + aadhar + password);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=(Connection) DriverManager.getConnection(db,dbid,dbpass);
			Statement st = (Statement) connection.createStatement();
			String enc = MD5.getMd5(password);
			String sql = "INSERT INTO users (username,email,Aadhar,password) VALUES('"+username+"','"+email+"',"+aadhar+",'"+ enc+"')" ;
			int flag = st.executeUpdate(sql);
			if (flag > 0) {
				response.sendRedirect("index.jsp");
			}else {
				response.sendRedirect("RegPatient.jsp");
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	}
}

class MD5 { 
    public static String getMd5(String input) 
    { 
        try { 
  
            // Static getInstance method is called with hashing MD5 
            MessageDigest md = MessageDigest.getInstance("MD5"); 
  
            // digest() method is called to calculate message digest 
            //  of an input digest() return array of byte 
            byte[] messageDigest = md.digest(input.getBytes()); 
  
            // Convert byte array into signum representation 
            BigInteger no = new BigInteger(1, messageDigest); 
  
            // Convert message digest into hex value 
            String hashtext = no.toString(16); 
            while (hashtext.length() < 32) { 
                hashtext = "0" + hashtext; 
            } 
            return hashtext; 
        }  
  
        // For specifying wrong message digest algorithms 
        catch (NoSuchAlgorithmException e) { 
            throw new RuntimeException(e); 
        } 
    } 
}   