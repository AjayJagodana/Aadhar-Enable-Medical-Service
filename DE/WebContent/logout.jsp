<%
 if(session.getAttribute("did") != null){
	 session.removeAttribute("did");
 } 
 else{
	 session.removeAttribute("aadhar");
 }
%>
<jsp:forward page="index.jsp" />  