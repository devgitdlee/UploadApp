<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<h1>���� ���� ���ε�</h1>
<%
	int cnt = 0;
	if(request.getParameter("add") != null){
		cnt = Integer.parseInt(request.getParameter("add"));
	}
%>
<form method="post" action="multiFile1.jsp">
	����� : <input type="text" name="user" /><br/><br/>
	���� : <input type="text" name="title" /><br/><br/>
	�ϰ� ���� �� :<textarea rows="5" cols="50" name="note"></textarea>
	<br/><br/>
	�߰��� ���� �� �Է� : <input type="text" name="add"/><br/><br/>
	<input type="submit" value="Ȯ��" />
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
	<input type="submit" value="���ε�" />
</form>
</body>
</html>







