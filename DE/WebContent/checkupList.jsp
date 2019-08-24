<jsp:include page="header.jsp" />
<%@ page import="java.sql.*" %>
<%
String db=application.getInitParameter("db"); 
String dbid=application.getInitParameter("dbid"); 
String dbpass=application.getInitParameter("dbpass"); 
	String did = session.getAttribute("did").toString();
	Class.forName("com.mysql.jdbc.Driver");
	Connection connection=DriverManager.getConnection(db,dbid,dbpass);
	Statement st = (Statement) connection.createStatement();
	String sql = "SELECT * FROM aptm WHERE a_did='"+ did +"'ORDER BY a_time ASC";
	ResultSet rs = (ResultSet) st.executeQuery(sql);
	int i = 1;
%>
<section>
  <div class="container">
    <div class="row">
          <div class="col-md-12 mt-40">
            <h4 class="title">History</h4>
              <div data-example-id="simple-responsive-table" class="bs-example"> 
               <div class="table-responsive"> 
                <table class="table table-bordered">
                 <thead> 
                  <tr> <th>No.</th> <th>Name</th> <th>Mobile No.</th> <th>Aadhar No.</th> <th>Time</th><th>Status</th> </tr> 
                </thead> 
                <tbody> 
 					<%  while(rs.next())
						{ %>
                  <tr id="entry"> <th scope="row"><%=i %></th> <td><%= rs.getString("a_pname") %></td> <td><%= rs.getString("a_pemail") %></td> <td><%= rs.getLong("a_paadhar") %></td> <td><%= rs.getDate("a_time") %></td> <td>
                  <%
                  	if(rs.getInt("a_flag") == 1)
                  	{
                  		out.print("Success");
                  	}
                  	else
                  	{
                  		out.print("Pending");
                  	}
                  %></td> </tr> 
                  <%
							i++;
						}
				  %>
                </tbody> 
              </table> 
              <div align="center">
            <button type="submit" class="btn btn-dark btn-theme-colored btn-flat mr-5" name="f_hos" onclick="window.location.href='checkup.jsp'">Start</button>
            </div> 
            </div> 
          </div>
  		</div>	
  	</div>
 </div>
 
</section>
<jsp:include page="footer.jsp" />