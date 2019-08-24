<jsp:include page="header.jsp" />
<%@page import="java.sql.*"%>
<%
String db=application.getInitParameter("db"); 
String dbid=application.getInitParameter("dbid"); 
String dbpass=application.getInitParameter("dbpass"); 
	String did = session.getAttribute("did").toString();
	Class.forName("com.mysql.jdbc.Driver");
	Connection connection=DriverManager.getConnection(db,dbid,dbpass);
	Statement st = (Statement) connection.createStatement();
	String sql = "SELECT * FROM aptm WHERE a_did='"+ did +"' AND a_flag=0 ORDER BY a_time ASC";
	ResultSet rs = (ResultSet) st.executeQuery(sql);
	if(rs.next() == false){
		response.sendRedirect("checkupList.jsp");
	}
	else{
		rs.first();
	int id = rs.getInt("a_id");
	String pname = rs.getString("a_pname");
	Long aadhar = rs.getLong("a_paadhar") ;
	String sql1 = "SELECT * FROM history WHERE h_aadhar="+ aadhar +" ORDER BY h_date DESC";
	ResultSet rt = (ResultSet) st.executeQuery(sql1);
%>
<section>
		<div class="container text-center" ><label><b><%= pname %></b></label></div>
		<%
			while(rt.next())
			{
		%><div class="container ">
	    <div class="panel panel-default">
	        <!-- Default panel contents -->
	         <div class="panel-heading"><%= rt.getString("h_hos") %><br><%= rt.getDate("h_date") %></div>
	          <div class="panel-body">
	              <p><%= rt.getString("h_details") %></p>
	          </div>
	          <ul class="list-group">
	            <li class="list-group-item"><%= rt.getString("h_medi") %></li>
	          </ul>
	     </div>
	  </div>
<%
	}
%> 
</section>
<section>
	<div class="container ">
      <div class="text-center ">
        <label><B>Enter Appropriate Details Here:</B></label><br><br>
      </div>
      <form class="form-horizontal" action="HandleCheckupList" method="post">
      <input type="hidden" name="aid" value="<%= id %>">
      <input type="hidden" name="did" value="<%= did %>">
      <input type="hidden" name="aadhar" value="<%= aadhar %>">
        <div class="form-group">
          <label  class="col-sm-2 control-label">Deatils</label>
           <div class="col-sm-10">
              <textarea name="detail" class="form-control required" rows="5" placeholder="Enter Details About Medical Problem Here"></textarea>
            </div>
        </div>
        <div class="form-group">
          <label  class="col-sm-2 control-label">Medicines</label>
           <div class="col-sm-10">
              <textarea name="medi" class="form-control required" rows="5" placeholder="Enter Medicines Details With Quantities Here"></textarea>
            </div>
        </div>
        <div class="form-group text-center">
          <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" name="hsub" class="btn btn-dark btn-theme-colored btn-flat mr-5">Next</button>
          </div>
        </div>
        
      </form>
    </div>
    <% } %>
</section>
<jsp:include page="footer.jsp" />