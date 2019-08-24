<%@page import="java.sql.*"%>
<jsp:include page="header.jsp" />
<section>
  <div class="container">
    <div class="col-md-6">
        <form action="Appoitment" method="post">
        <div class="form-group">
        <%
        String db=application.getInitParameter("db"); 
    	String dbid=application.getInitParameter("dbid"); 
    	String dbpass=application.getInitParameter("dbpass"); 	
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection=DriverManager.getConnection(db,dbid,dbpass);
			Statement st = connection.createStatement();
			
			ResultSet rs = st.executeQuery("SELECT DISTINCT ho_country FROM hospital ");
			
			
		%>
        <label>Select Country</label>
        <select class="form-control" name="country" onchange="fn()" id="con">
        <option value="">--Select--</option>
        	<%
        		while(rs.next()){
        	%>
        	
        		<option value="<%=rs.getString("ho_country")%>"><%=rs.getString("ho_country")%></option>
        	<%}
        	%>
        	
        </select>
        <br><br><br>
        
         <label>Select State</label>
                  <select class="form-control" name="state" id="state" onchange="fn1()">
                
         </select><br><br><br>
         
          <label>Select city</label>
                  <select class="form-control" name="city" id="city">
                
         </select><br><br><br>
        
          <!-- <label>Select Country</label>
                  <select class="form-control" name="country">
                    <option value="India">India</option>
                    <option value="US">US</option>
                    <option value="Canada">Canada</option>
                    <option value="China">China</option>
                    <option value="Germany">Germany</option>
                  </select><br><br><br>
            <label>Select State</label>
                  <select class="form-control" name="state">
                    <option value="Gujarat">Gujarat</option>
                    <option value="Rajasthan">Rajasthan</option>
                    <option value="Maharastra">Maharastra</option>
                    <option value="Delhi">Delhi</option>
                    <option value="Mumbai">Mumbai</option>
                  </select><br><br><br>
            <label>Select City</label>
                  <select class="form-control" name="city">
                    <option value="Ahmedabad">Ahmedabad</option>
                    <option value="Vadodara">Vadodara</option>
                    <option value="Morbi">Morbi</option>
                    <option value="Rajkot">Rajkot</option>
                    <option value="Junagadh">Junagadh</option>
                  </select><br><br><br>
 -->                  
                  <span></span>
            <div align="center">
            <button type="submit" class="btn btn-dark btn-theme-colored btn-flat mr-5" name="f_hos" >Find Hospitals</button>
            </div>        
         </div>
         </form>
    </div>    
  </div>
</section>
<jsp:include page="footer.jsp" />

<script type="text/javascript">
function fn(){
	var x=document.getElementById("con");
	var y=document.getElementById("state");
	var z=document.getElementById("city");
	z.innerHTML="";
	var htp=new XMLHttpRequest(); /* getting object stage no 1 */
	
	htp.onreadystatechange=function()
	{
		y.innerHTML="";
		if(htp.readyState==4){		/* 4th stage */
			console.log(htp.responseText);
			
			
			var jsn = JSON.parse(htp.responseText);
			
			//alert(jsn[0].sid);
			console.log("json is"+jsn);
			for(var i=0;i<jsn.length;i++)
			{
				//alert(jsn[i].sid);
				var opn = document.createElement("option");
				
				opn.value=jsn[i].sid;
				opn.text = jsn[i].sname;
				console.log(opn);
				y.options.add(opn);
			}
		}
	}
	htp.open("get","ajax/FindState.jsp?con="+x.value,true);	/* 2nd stage */
	htp.send();		/* 3rd stage */
}

function fn1(){
	var x=document.getElementById("state");
	var y=document.getElementById("city");
	
	var htp=new XMLHttpRequest(); /* getting object stage no 1 */
	
	htp.onreadystatechange=function()
	{
		y.innerHTML="";
		if(htp.readyState==4){		/* 4th stage */
			console.log(htp.responseText);
			console.log(htp.responseText);
			
			var jsn = JSON.parse(htp.responseText);
			
			//alert(jsn[0].sid);
			console.log("json is"+jsn);
			for(var i=0;i<jsn.length;i++)
			{
				//alert(jsn[i].sid);
				var opn = document.createElement("option");
				
				opn.value=jsn[i].sid;
				opn.text = jsn[i].sname;
				console.log(opn);
				y.options.add(opn);
			}
		}
	}
	htp.open("get","ajax/FindCity.jsp?con="+x.value,true);	/* 2nd stage */
	htp.send();		/* 3rd stage */
}

</script>