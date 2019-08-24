<jsp:include page="header.jsp" />

<section>
  <div class="container">
    <div class="col-md-6">
      <ul class="list theme-colored">
      
      		<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
			<c:forEach var="i" items="${sessionScope.list}">
				<li> <a href="filterDoc?hname=${i}">${i}</a> </li> 
			</c:forEach>
	</ul>
  </div>    
 </div>
</section>

<jsp:include page="footer.jsp" />