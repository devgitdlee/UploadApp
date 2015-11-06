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
<h1>다중 파일 업로드</h1>
<form method="post" action="multiFile_proc.jsp" name="f" enctype="multipart/form-data">
	사용자 : <input type="text" name="user" /><br/><br/>
	제목 : <input type="text" name="title" /><br/><br/>
	하고 싶은 말 :<textarea rows="5" cols="50" name="note"></textarea>
	<br/><br/>
	추가할 파일 수 입력 : <input type="text" name="add"/><br/><br/>
	<input type="button" value="확인" onclick="fnAddInput()"/>
	<br/><br/><br/>
	<div id="inputDiv"></div><br/>
	<input type="submit" value="업로드" />
</form>
</body>
</html>







