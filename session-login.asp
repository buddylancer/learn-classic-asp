<%
	var username, password, submit;
	var message = "";

	username = Request.Form("username");
	password = Request.Form("password");
	submit = Request.Form("submit");

	if (submit == "Logout") {
		// remove session
		Session("currentUser") = "";
	}
	else if (submit == "Login") {
		if (username == "")
			message = message + "username is required <br/>";
		if (password == "")
			message = message + "password is required <br/>";

		// username and password = "user"
		if (username(1) != "user" || password(1) != "user")
			message = message + "username or password is wrong";
		else
			Session("currentUser") = username(1);
	}
%>

<!--#include file="layouts/header.asp"-->

	<h1>Login</h1>

	<% if (Session("currentUser") == "") {  %>
		<form method="POST" action="session-login.asp">
		  Username<br/>
		  <input type="text" name="username" placeholder="username"/> <br/>
		  Password<br/>
		  <input type="password" name="password" placeholder="password"/> <br/>
		  <input type="submit" name="submit" value="Login" />
		  <br/>
		  <i><%= message %></i>
		</form>
	<% } else if (Session("currentUser") != "") { %>
		<form method="POST" action="session-login.asp">
		  Hello <%= Session("currentUser") %>
		  <input type="submit" name="submit" value="Logout" />
		</form>
	<% } %>

	

<!--#include file="layouts/footer.asp"-->

