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

사용자 : <%=multiReq.getParameter("user") %><br/>
제목 : <%=multiReq.getParameter("title") %><br/>
<hr/>

<%
	Enumeration enumer = multiReq.getFileNames();
	while(enumer.hasMoreElements()){
		String name = (String)enumer.nextElement();
%>
		실제 파일명 : <%=multiReq.getOriginalFileName(name) %><br/>
		저장될 파일명 : <%=multiReq.getFilesystemName(name) %><br/>
		파일 타입 : <%=multiReq.getContentType(name) %><br/> 
<%
		File f = multiReq.getFile(name);
%>
		파일의 크기 : <%=f.length()%>byte <br/>
		파일의 경로 : <%=f.getPath()%>
<%
	}
%>






