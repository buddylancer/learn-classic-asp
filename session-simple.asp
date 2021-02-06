<%
	var submit = Request.Form("submit");

	if (submit == "Logout") {
		// remove session
		Session("currentUser") = "";
	}
	else if (submit == "Login") {
		// set session
		Session("currentUser") = "Park Kwang Hoo!";
	}
%>

<!--#include file="layouts/header.asp"-->

	<h1>Session</h1>

	<% if (Session("currentUser") == "") {  %>
		You are not logged in yet.
		<form method="POST" action="session-simple.asp">
		  <input type="submit" name="submit" value="Login" />
		</form>
	<% } else if (Session("currentUser") != "") { %>
		Hello <%= Session("currentUser") %>
		<form method="POST" action="session-simple.asp">
		  <input type="submit" name="submit" value="Logout" />
		</form>
	<% } %>

	

<!--#include file="layouts/footer.asp"-->

