<jsp:include page="header.jsp" />
<%@ page import="java.sql.*" %>

<%
String db=application.getInitParameter("db"); 
String dbid=application.getInitParameter("dbid"); 
String dbpass=application.getInitParameter("dbpass"); 
	double user = new Double(session.getAttribute("aadhar").toString());
	Class.forName("com.mysql.jdbc.Driver");
	Connection connection=DriverManager.getConnection(db,dbid,dbpass);
	Statement st = (Statement) connection.createStatement();
	String sql = "SELECT * FROM history WHERE h_aadhar="+ user +"ORDER BY h_date DESC";
	ResultSet rs = (ResultSet) st.executeQuery(sql);
	while(rs.next())
	{

%>

<section>
    <div class="container ">
    <div class="panel panel-default">
        <!-- Default panel contents -->
         <div class="panel-heading"> <%= rs.getString("h_hos") %><br><%= rs.getDate("h_date") %></div>
          <div class="panel-body">
              <p><%= rs.getString("h_details") %></p>
          </div>
          <ul class="list-group">
            <li class="list-group-item"><%= rs.getString("h_medi") %></li>
          </ul>
     </div>
    </div>
<%
	}
%>
</section> 
<jsp:include page="footer.jsp" />