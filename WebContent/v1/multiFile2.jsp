<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script>
	function fnAddInput(){
		var div = document.getElementById("inputDiv");
		var cnt = document.f.add.value;
		div.innerHTML = "";
		
		for(var i=0; i<cnt; i++){
			var str = "<input type='file' name='upfile" + i + "'/><br/>";
			div.innerHTML += str;
		}
	}
</script>
</head>
<body>
<h1>���� ���� ���ε�</h1>
<form method="post" action="multiFile_proc.jsp" name="f" enctype="multipart/form-data">
	����� : <input type="text" name="user" /><br/><br/>
	���� : <input type="text" name="title" /><br/><br/>
	�ϰ� ���� �� :<textarea rows="5" cols="50" name="note"></textarea>
	<br/><br/>
	�߰��� ���� �� �Է� : <input type="text" name="add"/><br/><br/>
	<input type="button" value="Ȯ��" onclick="fnAddInput()"/>
	<br/><br/><br/>
	<div id="inputDiv"></div><br/>
	<input type="submit" value="���ε�" />
</form>
</body>
</html>







