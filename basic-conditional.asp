<!--#include file="layouts/header.asp"-->

<h1>Conditional</h1>
<%
var temperature = 25;
var message = "";


if (temperature < 15)
	message = "<p>Snow will come.</p>";
else if (temperature >= 15 && temperature < 25)
	message = "<p>Nice weather to have a picnic</p>";
else if (temperature >= 25 && temperature < 35)
	message = "<p>Summer is coming</p>";
else
	message = "<p>Woah! It's very hot!</p>";

Response.Write("temperature " + temperature);
Response.Write(message);
%>

<!--#include file="layouts/footer.asp"-->
