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
    font-size: 12px;
    line-height: 15px;
    text-align: left;
}

*, :after, :before {
    font-family: Noto Sans KR,helvetica,roboto,"sans-serif";
    box-sizing: border-box;
    outline: none;
}

body {
    display: block;
    margin: 8px;
}

html {
    -webkit-text-size-adjust: 100%;
    -moz-text-size-adjust: 100%;
    -o-text-size-adjust: 100%;
    text-size-adjust: 100%;
    -webkit-tap-highlight-color: transparent;
}

.account_wrap.bg_03 {
    background-image: url(img/bg_accout_01.jpg);
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
    max-width: 110%;
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

h2 {
    display: block;
    font-size: 1.5em;
    margin-block-start: 0.83em;
    margin-block-end: 0.83em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}

.form_wrap .f_group {
    margin-top: 20px;
}

.form_wrap .f_group .f_tit {
    display: block;
    color: #acacac;
    font-size: 25px;
    line-height: 32px;
    word-break: keep-all;
}

.inp_wrap {
    position: relative;
}

input[type=password], input[type=text], textarea {
    width: 100%;
    height: 48px;
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

input, select {
    font-family: Noto Sans KR,helvetica,roboto,"sans-serif";
}

input, select {
    -moz-appearance: none;
    -webkit-appearance: none;
    -o-appearance: none;
    appearance: none;
    color: #fff;
}

button, input, optgroup, select, textarea {
    color: inherit;
    font: inherit;
    margin: 0;
    vertical-align: top;
    outline: none;
}

.account_wrap .account .tit_account {
    font-family: Abril Fatface,serif;
    font-size: 36px;
    line-height: 80px;
}

.button.ok {
    background: #8f67ff;
}

.button.full {
    width: 100%;
    background: rgba(143,102,255,.5);
}


.button {
    padding: 0 10px;
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
}

button, input[type=button], input[type=image], input[type=submit], label, select {
    cursor: pointer;
}

button, select {
    text-transform: none;
}

button {
    overflow: visible;
    border: 0;
}

button, input, optgroup, select, textarea {
    color: inherit;
    font: inherit;
    margin: 0;
    vertical-align: top;
    outline: none;
}

button {
    appearance: button;
    -webkit-writing-mode: horizontal-tb !important;
    text-rendering: auto;
    color: -internal-light-dark(buttontext, rgb(170, 170, 170));
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: center;
    align-items: flex-start;
    cursor: default;
    background-color: -internal-light-dark(rgb(239, 239, 239), rgb(74, 74, 74));
    box-sizing: border-box;
    margin: 0em;
    font: 400 13.3333px Arial;
    padding: 1px 6px;
    border-width: 2px;
    border-style: outset;
    border-color: -internal-light-dark(rgb(118, 118, 118), rgb(195, 195, 195));
    border-image: initial;
}

</style>
<script>
	function join(){
		joinfrom.submit();
    }
</script>
</head>
</head>
<body class="usr-body">
	<div class="wrap">
		<div id="app" class="kr">
			<div id="app" iscommon="true">
				<div class="account_wrap bg_03" lang="[object Object]" bgtype="03" iskoreanlanguage="true">
					<a href="Movie_Main.jsp" class="logo">
						<img src="img/logo_312_80.png" alt="MovieBloc">
					</a>
					<div class="account">
						<h2 class="tit_account kr">회원가입</h2>
						<div class="form_wrap">
							<form action="moviejoin" method="post" name="joinfrom">
							<div class="f_group">
								<span class="f_tit">이메일</span>
								<div class="inp_wrap">
									<input type="text" placeholder="아이디를 입력 하세요." id="mid" name="mid">
								</div>
							</div>
							<div class="f_group">
								<span class="f_tit">비밀번호</span>
								<div class="inp_wrap">
									<input type="password" placeholder="비밀번호를 입력 하세요." id="mpassword" name="mpassword">
								</div>
							</div>
							<div class="f_group">
								<span class="f_tit">비밀번호</span>
								<div class="inp_wrap">
									<input type="password" placeholder="비밀번호를 다시 입력 하세요." id="mpasswordch" name="mpasswordch">
								</div>
							</div>
							<div class="f_group">
								<span class="f_tit">별명</span>
								<div class="inp_wrap">
									<input type="text" placeholder="별명을 입력 하세요." id="mbyname" name="mbyname">
								</div>
							</div>
							</form>
							<div class="f_group">
								<button class="button full ok" onclick="join()">회원가입</button>
							</div>
						</div>		
					</div>	
				</div>			
			</div>
		</div>
	</div>
</body>
</html>