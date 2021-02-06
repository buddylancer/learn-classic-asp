<!--#include file="layouts/header.asp"-->

<h1>Function</h1>
<%
	function sayHello(name) {
		Response.write ("<p>Hello " + name + "</p>");
	}
	
	// in vbscript we cannot use word "return"
	// what we have to do is use functionName=  
	// it's so uncommon, isn't it?
	function printHello(name) {
		return "<p>Hello " + name + "</p>"
	}

	sayHello("Michael");
	Response.write (printHello("Michaelsss"));
%>
<!--#include file="layouts/footer.asp"-->
