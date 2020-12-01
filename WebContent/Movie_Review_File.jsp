<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	
body {
    margin: 0;
    padding: 0;
    color: #fff;
    background: #0e0e0e;
    font-size: 13px;
    line-height: 15px;
    text-align: left;
}

*, :after, :before {
    font-family: Noto Sans KR,helvetica,roboto,"sans-serif";
    box-sizing: border-box;
    outline: none;
}

div {
    display: block;
}

html {
    -webkit-text-size-adjust: 100%;
    -moz-text-size-adjust: 100%;
    -o-text-size-adjust: 100%;
    text-size-adjust: 100%;
    -webkit-tap-highlight-color: transparent;
}

.account_wrap.bg_03 {
    background-image: url(img/bg_accout_04.jpg);
}

.account_wrap {
    width: 100%;
    height: 100vh;
    padding: 60px 0;
    background-repeat: no-repeat;
    background-size: cover;
    background-position: 50%;
    overflow: auto;
}

div[Attributes Style] {
    -webkit-locale: "[object Object]";
}

.account_wrap .logo {
    display: block;
    width: 156px;
    margin: 0 auto 60px;
}

a {
    background-color: transparent;
    text-decoration: none;
    color: #fff;
}

img {
    max-width: 120%;
    vertical-align: top;
}

a:active, a:hover, img {
    outline: 0;
}

.account_wrap .account {
    width: 580px;
    margin: 0 auto;
    padding: 40px 80px;
    background: #1e1e1e;
    border-radius: 5px;
    box-shadow: 0 0 10px #000;
}

.account_wrap .account {
    width: 580px;
    margin: 0 auto;
    padding: 40px 80px;
    background: #1e1e1e;
    border-radius: 5px;
    box-shadow: 0 0 10px #000;
}

.account_wrap .account .tit_account.kr {
    font-family: NanumMyeongjo,serif;
}

.account_wrap .account .tit_account {
    font-family: Abril Fatface,serif;
    font-size: 36px;
    line-height: 80px;
}

h1, h2, h3, h4, h5 {
    font-weight: 400;
}

dd, dl, dt, h1, h2, h3, h4, h5, li, ol, p, ul {
    margin: 0;
    padding: 0;
}

.form_wrap .f_group {
    margin-top: 20px;
}

.form_wrap .f_group .f_tit {
    
    color: #acacac;
    font-size: 30px;
    line-height: 32px;
    word-break: keep-all;
}

.inp_wrap {
    position: relative;
}

*, :after, :before {
    font-family: Noto Sans KR,helvetica,roboto,"sans-serif";
    box-sizing: border-box;
    outline: none;
}

input[type=text], textarea {
    width: 100%;
    padding: 0 20px;
    border: 1px solid #3e3e3e;
    font-size: 16px;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    -o-border-radius: 3px;
    border-radius: 3px;
    background: #0e0e0e;
    color: #fff;
}

.lang_wrap {
    overflow: hidden;
}

.lang_wrap select {
    float: left;
    width: 417px;
}

.sel_lightgray {
    background-color: #acacac;
}

.sel_large {
    height: 40px;
    padding: 0 6px 0 5px;
    border-radius: 25px;
    font-size: 16px;
    line-height: 20px;
}

option {
    font-weight: normal;
    display: block;
    white-space: pre;
    min-height: 1.2em;
    padding: 0px 2px 1px;
}

.contents{
	height: 48px;
}

.caption_wrap .btn, .caption_wrap .button {
    float: left;
    margin-left: 20px;
}

.button.ok {
    background: #8f67ff;
}

.caption-upload-button {
    padding: 0 50px;
}

.button {
    display: inline-block;
    height: 48px;
    margin: 0 auto;
    padding: 0 40px;
    border-radius: 3px;
    font-size: 16px;
    line-height: 48px;
    text-align: center;
    width: 100%;
}



</style>
<script>
	function register(){
		Mediaform.submit();
	}
</script>
</head>
<body  class="usr-body">
	<div class="wrap">
		<form action="mediajoin" method="post" name="Mediaform" enctype="multipart/form-data">
		<div id="app" class="kr">
			<div id="app" iscommon="true">
				<div class="account_wrap bg_03" lang="[object Object]" bgtype="04" iskoreanlanguage="true">
					<a href="Movie_Main.jsp" class="logo">
						<img src="img/logo_312_80.png" alt="MovieBloc">
					</a>
					<div class="account">
						<h2 class="tit_account kr">영화 업로드</h2>
						<div class="form_wrap">
							<div class="f_group">
								<span class="f_tit">영화제목 :</span>
								<select class="sel_lightgray sel_large" name="mlink">
	    							<option  value="NULL">OTT서비스</option>
	    							<option  value="넷플렉스">넷플릭스</option>
	    							<option  value="디지니">디지니</option>
	    							<option  value="왓챠">왓챠</option>
	    							<option  value="WAVVE">WAVVE</option>
	  							</select>
								<div class="inp_wrap">
									<input class="contents" type="text" name="mtitle" id="mtitle" placeholder="영화 제목 입력하세요.">
								</div>
							</div>
							<div class="f_group">
								<span class="f_tit">영화내용 :</span>
								<div><textarea type="text" name="mcontents" id="mcontents" cols="68" rows="30" > </textarea>
									<div >
										<label><input class="check" type="checkbox" name="mgenre" value="액션">액션</label>
     									<label><input class="check" type="checkbox" name="mgenre" value="공포">공포</label>
     									<label><input class="check" type="checkbox" name="mgenre" value="멜로">멜로</label>
     									<label><input class="check" type="checkbox" name="mgenre" value="코미디">코미디</label>
     									<label><input class="check" type="checkbox" name="mgenre" value="스릴러">스릴러</label>
     									<label><input class="check" type="checkbox" name="mgenre" value="판타지">판타지</label>
     									<label><input class="check" type="checkbox" name="mgenre" value="애니메이션">애니메이션</label>
									</div>								
								</div>
							</div>
							<div class="f_group">
										이미지 : <input type="file" name="mimage" id="mimage"><br>
										영상 : <input type="file" name="mmovie" id="mmovie">
							</div>
							
							<div>
								<button class="button ok caption-upload-button" onclick="register()">등록하기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</form>
</body>
</html>