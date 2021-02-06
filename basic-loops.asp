<!--#include file="layouts/header.asp"-->

<h1>Loops</h1>
<%
	for (var index = 0; index <= 5; index++)
		Response.write("<p>This is my first text<p>");
%>
<hr />
<%
	for (var index2 = 0; index2 <= 5; index2 += 2)
		Response.write("<p>This is my second text<p>");
%>
<hr />
<%
	for (var index3 = 0; index3 <= 5; index3++)
		Response.write("<p>Current text index is " + index3 + "<p>");
%>
<hr />
<%
	var index4 = 0;
	do {
		Response.write("<p>Current text index is " + index4 + "<p>");
		index4 = index4 + 1;
	} while (index4 != 6);
%>
<hr />
<%
	for (var row = 0; row <= 1; row++)
		for (var col = 0; col <= 1; col++)
			Response.write("<p>Table row:" + row + " col:" + col + "<p>");
%>

<!--#include file="layouts/footer.asp"-->

