<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<h1>다중 파일 업로드</h1>
<%
	int cnt = 0;
	if(request.getParameter("add") != null){
		cnt = Integer.parseInt(request.getParameter("add"));
	}
%>
<form method="post" action="multiFile1.jsp">
	사용자 : <input type="text" name="user" /><br/><br/>
	제목 : <input type="text" name="title" /><br/><br/>
	하고 싶은 말 :<textarea rows="5" cols="50" name="note"></textarea>
	<br/><br/>
	추가할 파일 수 입력 : <input type="text" name="add"/><br/><br/>
	<input type="submit" value="확인" />
</form><br/><br/><br/>
<hr/>
<form method="post" action="multiFile_proc.jsp" enctype="multipart/form-data">
<%
	for(int i=0; i<cnt; i++){
%>
		<input type="file" name="upfile<%=i%>" /><br/><br/>
<%
	}
%>
	<input type="submit" value="업로드" />
</form>
</body>
</html>







