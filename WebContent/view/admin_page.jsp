<%@page import="com.regnant.db.userdata_objects"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

.display_data{
border: 1px solid black;
width:500px;
height:500px;
display: none;
background-color: lime;
}


</style>

</head>
<body>
welcome back <%=request.getAttribute("email") %>
<input type="button" onclick="data_from_DB()"  value="DATA FROM DATABASE">
<div class="display_data" id="123">


</div>


<script type="text/javascript">

function data_from_DB() {
	document.getElementById("123").style.display="block";

	<% List<userdata_objects> li=(List<userdata_objects>)request.getAttribute("li"); 
	
	for(userdata_objects obj:li){
	%>
	var l=document.createElement("P");

	l.innerText="<%=obj%>";
	
	
	
	
	document.getElementById("123").appendChild(l);
	
	<%}%>
	
	
}

</script>

	
	
</body>
</html>