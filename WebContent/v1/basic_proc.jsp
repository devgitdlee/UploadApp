<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<%
	String saveDir = getServletContext().getRealPath("upload");
	//D:\\netsong7\\JspWorkSpace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\UploadApp\\upload
	
	MultipartRequest multiReq = new MultipartRequest(request, saveDir, 
		50*1024*1024, "euc-kr", new DefaultFileRenamePolicy());
%>

����� : <%=multiReq.getParameter("user") %><br/>
���� : <%=multiReq.getParameter("title") %><br/>
<hr/>

<%
	Enumeration enumer = multiReq.getFileNames();
	while(enumer.hasMoreElements()){
		String name = (String)enumer.nextElement();
%>
		���� ���ϸ� : <%=multiReq.getOriginalFileName(name) %><br/>
		����� ���ϸ� : <%=multiReq.getFilesystemName(name) %><br/>
		���� Ÿ�� : <%=multiReq.getContentType(name) %><br/> 
<%
		File f = multiReq.getFile(name);
%>
		������ ũ�� : <%=f.length()%>byte <br/>
		������ ��� : <%=f.getPath()%>
<%
	}
%>






