<jsp:include page="header.jsp" />

<section>
  <div class="container">
    <div class="col-md-6">
    	<form action="BookAppoitment" method="post">
    	<div class="form-group">
    		<label>Select Doctor</label>
    		<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
	    		<select class="form-control" name="doc">
	    		
	    		<c:forEach var="i" items="${sessionScope.list1}">
	    				<option value="${i.getValue()}"> ${i.getKey()}</option>
	    		</c:forEach>
	    		
	    		</select><br><br>	
    		<div align="center">
            <button type="submit" class="btn btn-dark btn-theme-colored btn-flat mr-5" name="f_hos" >Book Appoitment</button>
            </div> 
    	</div>	
		</form>
  </div>    
 </div>
</section>

<jsp:include page="footer.jsp" />