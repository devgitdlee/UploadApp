<%@page import="java.util.Enumeration"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<%
	String saveDir = getServletContext().getRealPath("upload");
	MultipartRequest multiReq = new MultipartRequest(request, saveDir, 
		50*1024*1024, "euc-kr", new DefaultFileRenamePolicy());
	
	String user = multiReq.getParameter("user");
	String title = multiReq.getParameter("title");
	String note = multiReq.getParameter("note");
	
	ArrayList saveFile = new ArrayList();
	
	Enumeration enumer = multiReq.getFileNames();
	while(enumer.hasMoreElements()){
		String name = (String)enumer.nextElement();
		saveFile.add(multiReq.getFilesystemName(name));
	}
%>
<!DOCTYPE html>
<html>
<head><title>Insert title here</title></head>
<body>
����� : <%=user%><br/>
���� : <%=title%><br/>
�ϰ���� �� : <%=note%><br/>
���ϸ��<br/>
<ul>
	<%
		for(int i=0; i<saveFile.size(); i++){
	%>
		<li><a href="../upload/<%=saveFile.get(i)%>"><%=saveFile.get(i)%></a></li>
	<% 
		}
	%>
</ul>
</body>
</html>



