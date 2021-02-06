<%
	// form validation here
	var title, content, category, status;
	var titleMessage, contentMessage, categoryMessage, statusMessage;
	title = Request.Form("title")
	content = Request.Form("content")
	category = Request.Form("category")
	status = Request.Form("status")
	submit = Request.Form("submit")

	if (isNull(title) && !isNull(submit))
		titleMessage = "Please write down the title";

	if (isNull(content) && !isNull(submit))
		contentMessage = "Please write down the content";

	function isNull(text) {
		return (text == null || text == "")
	}
%>

<!--#include file="layouts/header.asp"-->

	<h1>Form POST</h1> 

	<form method="POST" action="form-post-validation.asp">
		Title<br/>
		<input type="text" name="title" placeholder="title"/> 
		<i><%= titleMessage %></i>
		<br/>
		Content<br/>
		<textarea name="content" placeholder="content"></textarea> 
		<i><%= contentMessage %></i>
		<br/>
		Category : 
		<input type="checkbox" name="category" value="news"/> News 
		<input type="checkbox" name="category" value="event" /> Event <br/>
		Status : 
		<input type="radio" name="status" value="published"/> Published 
		<input type="radio" name="status" value="draft" /> Draft <br/><br/>
		<input type="submit" name="submit" value="Submit" />
	</form>

	<hr/>

	<h1>Form POST Response</h1> 

	Title : <%= title %> <br/>
	Content : <%= content %> <br/>
	Category : <%= category %> <br/>  
	Status : <%= status %> <br/>

<!--#include file="layouts/footer.asp"-->

