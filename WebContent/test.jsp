<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function register(){
		Mediaform.submit();
	}
</script>
</head>
<body>
	<h2>Movie_Review_File.jsp</h2>
	<form action="mediajoin" method="post" name="Mediaform" enctype="multipart/form-data">
		영화제목 : <input type="text" name="mtitle" id="mtitle">
	  	<select name="mlink">
	    	<option   value="NULL">OTT서비스</option>
	    	<option  value="넷플렉스">넷플릭스</option>
	    	<option  value="디지니">디지니</option>
	    	<option  value="왓챠">왓챠</option>
	    	<option  value="WAVVE">WAVVE</option>
	  	</select><br>
		내용 : <div><textarea type="text" name="mcontents" id="mcontents" cols="68" rows="30" > </textarea></div>
		<input type="radio" name="mgenre" value="액션"><h2>액션</h2>
		<input type="radio" name="mgenre" value="공포"><h2>공포</h2>
		<input type="radio" name="mgenre" value="코미디"><h2>코미디</h2>
		<input type="radio" name="mgenre" value="멜로"><h2>멜로</h2>
		<input type="radio" name="mgenre" value="스릴러"><h2>스릴러</h2>
		<input type="radio" name="mgenre" value="판타지"><h2>판타지</h2>
		<input type="radio" name="mgenre" value="애니메이션"><h2>애니메이션</h2><br>		
		이미지 : <input type="file" name="mimage" id="mimage"><br>
		영상 : <input type="file" name="mmovie" id="mmovie">
	</form>	
		<button onclick="register()">등록하기</button>
</body>

</html>