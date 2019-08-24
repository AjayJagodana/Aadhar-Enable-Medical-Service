<%@page import="java.sql.*"%>


<%
	String s = "[{\"sid\": \"\" , \"sname\":\"-select-\"},";
	String con = request.getParameter("con");
	String db=application.getInitParameter("db"); 
	String dbid=application.getInitParameter("dbid"); 
	String dbpass=application.getInitParameter("dbpass"); 

	con=con.trim();
	Class.forName("com.mysql.jdbc.Driver");
	Connection connection=DriverManager.getConnection(db,dbid,dbpass);
	Statement st = connection.createStatement();
	System.out.print(con);
	
	ResultSet rs = st.executeQuery("SELECT DISTINCT ho_city FROM hospital where ho_state = '"+con+"'");

	while(rs.next())
	{
		s=s+"{";
		s=s+"\"sid\":\""+rs.getString("ho_city")+"\",";
		s=s+"\"sname\":\""+rs.getString("ho_city")+"\"";
		s=s+"},";
	}
	
	s=s.substring(0,s.length()-1);
	
	s=s+"]";

	out.print(s);
%>