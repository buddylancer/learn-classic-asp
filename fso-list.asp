<!--#include file="layouts/header.asp"-->
<h1>File System Object (FSO) - List folder and file</h1>
<%
	// reference http://html.net/tutorials/asp/lesson14.asp
	// anything related to CreateObject should use "Set" to set the variable

	// read all disk drive directory in PC
	var fso, dir, drives;
	fso = Server.CreateObject("Scripting.FileSystemObject");
	drives = fso.Drives;

	Response.Write("Read Drive Letter");
	for (dir in drives)
		Response.Write(dir.DriveLetter + "<br/>");
%>
<hr/>
<%
	// read folder information
	var fso2, folder;
	var folderURL = Request.ServerVariables("PATH_INFO"); //Application("rootURL");
	folderURL = folderURL.substring(0, folderURL.lastIndexOf("/") - 1);

	var folderSpec = Request.ServerVariables("PATH_TRANSLATED"); // Server.MapPath(folderURL + "/");
	folderSpec = folderSpec.substring(0, folderSpec.lastIndexOf("\\\\"));

	fso2 = Server.CreateObject("Scripting.FileSystemObject");
	folder = fso2.getFolder(folderSpec);

	Response.Write("Read Folder <br/>");
	Response.Write("URL : " + folderURL + "<br/>");
	Response.Write("Path : " + folderSpec + "<br/>");
	Response.Write("size :" + folder.Size + "<br/>");
	Response.Write("created :" + folder.DateCreated + "<br/>");
%>
<hr/>
<%
	// read file information
	var fso3, file, fileSpec, fileURL;
	fileURL = Application("rootURL") + "/default.asp";
	fileSpec = Server.MapPath(fileURL);
	fso3 = Server.CreateObject("Scripting.FileSystemObject");
	file = fso3.getFile(fileSpec);

	Response.Write("Read File <br/>");
	Response.Write("URL : " + fileURL + "<br/>");
	Response.Write("Path : " + fileSpec + "<br/>");
	Response.Write("size :" + file.Size + "<br/>");
	Response.Write("created :" + file.DateCreated + "<br/>");
%>

<!--#include file="layouts/footer.asp"-->
