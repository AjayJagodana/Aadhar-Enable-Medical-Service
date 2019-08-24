package Controller;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.DriverManager;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class Docreg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String username = request.getParameter("username");
		long contact = Long.parseLong(request.getParameter("contact"));
		String email = request.getParameter("email");
		String did = request.getParameter("did");
		double aadhar = Double.parseDouble(request.getParameter("aadhar"));
		String hname = request.getParameter("hname");
		String edu = request.getParameter("edu");
		String address = request.getParameter("address");
		String password = request.getParameter("password");
		ServletContext context=getServletContext();
		String db=context.getInitParameter("db");
		String dbid=context.getInitParameter("dbid");
		String dbpass=context.getInitParameter("dbpass");
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=(Connection) DriverManager.getConnection(db,dbid,dbpass);
			Statement st = (Statement) connection.createStatement();
			String enc = MD5dr.getMd5(password);
			String sql = "INSERT INTO docs (d_username,d_contact,d_email,d_did,d_aadhar,d_hospital,d_edu,d_address,	d_pass) VALUES('"+username+"',"+contact+",'"+email+"','"+did+"',"+aadhar+",'"+hname+"','"+edu+"','"+address+"','"+ enc+"')" ;
			int flag = st.executeUpdate(sql);
			if (flag > 0) {
				response.sendRedirect("checkupList.jsp");
			}else {
				response.sendRedirect("RegPatient.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
class MD5dr { 
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
