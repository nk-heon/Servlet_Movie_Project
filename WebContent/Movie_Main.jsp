<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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

html {
    -webkit-text-size-adjust: 100%;
    -moz-text-size-adjust: 100%;
    -o-text-size-adjust: 100%;
    text-size-adjust: 100%;
    -webkit-tap-highlight-color: transparent;
}

.header, .img img {
    width: 100%;
}

.header {
    position: fixed;
    z-index: 100;
    left: 0;
    top: 0;
}


article, aside, figure, footer, header, menu, nav, section {
    display: block;
}

.header.scroll:before {
    display: block;
}

.header:before {
    display: none;
    content: "";
    position: absolute;
    z-index: -1;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    background: #000;
    opacity: .7;
    transition: background-color .2s ease;
}


.header_wrap {
    padding: 16px 30px;
}

.header_wrap {
    position: relative;
    padding: 16px 80px;
    height: 80px;
}

a {
    background-color: transparent;
    text-decoration: none;
    color: #fff;
}

.header .logo {
    float: left;
    display: inline-block;
    width: 156px;
    height: 48px;
    no-repeat 50%/100%;
    text-indent: -999px;
    overflow: hidden;
}

.header .page_menu_wrap {
    display: inline-block;
    float: right;
}

.header .account {
    float: left;
}

.header .account .my, .header .alarm_wrap {
    margin-left: 25px;
    margin-right: 0;
}

.header .account .my {
    border-radius: 50%;
}

.header .account .my {
    position: relative;
    display: inline-block;
    margin: 0 18px 0 20px;
    vertical-align: middle;
    line-height: 46px;
}

.header .account .my .sign {
    display: inline-block;
    font-size: 14px;
    vertical-align: middle;
    line-height: 48px;
    margin-right: 40px;
}

li {
    text-align: -webkit-match-parent;
}

li {
    list-style: none;
}

.header .search {
    float: right;
    width: 40px;
    height: 40px;
}

.main_cont {
    overflow-x: hidden;
}

.main_cont {
    padding: 0 0 80px;
}

.main_top_banner {
    position: relative;
    width: 100%;
    height: 800px;
    background-repeat: no-repeat;
    background-size: cover;
    background-position: 50%;
    overflow: hidden;
}

.main_top_banner:before {
    content: "";
    position: absolute;
    z-index: 1;
    left: 0;
    width: 100%;
}

.main_top_banner:before {
    top: 0;
    height: 100px;
    background: linear-gradient(180deg,rgba(0,0,0,.5),rgba(0,0,0,.5) 0,rgba(0,0,0,.2) 60%,transparent);
}

.main_top_banner:before {
    content: "";
    position: absolute;
    z-index: 1;
    left: 0;
    width: 100%;
}

.main_top_banner.event:after {
    height: 0;
}

.main_top_banner:after {
    bottom: 0;
    height: 300px;
    background: linear-gradient(0deg,rgba(0,0,0,.5),rgba(0,0,0,.5) 0,rgba(0,0,0,.2) 60%,transparent);
}

.section_list.thumb_expand {
    width: 100%;
    margin: 0 auto;
}

.list_wrap {
    clear: both;
    margin-top: 40px;
}

dl {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

dd, dl, dt, h1, h2, h3, h4, h5, li, ol, p, ul {
    margin: 0;
    padding: 0;
}

.section_list .home_tit_w {
    color: #fff;
}

.list_wrap .more_con {
    display: inline-block;
    padding-right: 20px;
   
    position: relative;
}


.expend_wrap dt {
    margin-left: 4%;
}

.list_tit, .list_wrap dt {
    color: #8f67ff;
    font-size: 28px;
    line-height: 36px;
    font-weight: 700;
    margin-left: 10px;
    margin-bottom: 12px;
}

.swp_video {
    position: relative;
}

.swipe_layout {
    width: calc(92% + 10px);
}

.swipe_layout {
    width: calc(93% + 10px);
    overflow-x: visible;
}

.swiper-container {
    margin-left: auto;
    margin-right: auto;
    position: relative;
    overflow-x: hidden;
    z-index: 1;
}

.swp_small .swipe_layout .main_swip {
    height: auto;
    margin: 0;
    padding: 0 5px;
    transition: transform .5s;
}

.swiper-container-android .swiper-slide, .swiper-wrapper {
    -webkit-transform: translateZ(0);
    -moz-transform: translateZ(0);
    -o-transform: translate(0);
    -ms-transform: translateZ(0);
    transform: translateZ(0);
}

element.style {
    transform: translate3d(0px, 0px, 0px);
    transition-duration: 0ms;
}

.swiper-wrapper {
    position: relative;
    width: 100%;
    height: 100%;
    z-index: 1;
    display: -webkit-box;
    display: -moz-box;
    display: -ms-flexbox;
    display: -webkit-flex;
    display: flex;
    -webkit-transition-property: -webkit-transform;
    -moz-transition-property: -moz-transform;
    -o-transition-property: -o-transform;
    -ms-transition-property: -ms-transform;
    transition-property: transform;
    -webkit-box-sizing: content-box;
    -moz-box-sizing: content-box;
    box-sizing: content-box;
}

.swp_small .swipe_layout .main_swip {
    height: auto;
    margin: 0;
    padding: 0 5px;
    transition: transform .5s;
}

.swp_small .swiper-slide.main_swip.thumb_large, .swp_video .swiper-slide.main_swip {
    width: 25%;
    padding: 0 5px;
}

.list_wrap dd .movie_thumb {
    display: block;
    padding-top: 56.25%;
    background-repeat: no-repeat;
    background-size: cover;
    background-position: 50%;
}

</style>
</head>


<body class="usr-body">
    <div class="wrap">
        <div id="app" class="kr">
            <div id="app" iscommon="true">
                <header class="header scroll">
                    <div class="header_wrap">
                        <a href="Movie_Main.jsp">
                        	<img class="logo" src="img\logo_312_80.png">    
                        </a>
						<div class="menu">
							<div class="page_menu_wrap">
								<div class="account">
									<nav class="my">
										<c:if test="${sessionScope.loginId == null}">
											<li class="">
												<a href="Movie_Member_Login.jsp" class="sign">로그인/회원가입</a>
											</li>
										</c:if>
										<c:if test="${sessionScope.loginId != null}">
											<li class="">
												<a href="memberlogout" class="sign">로그아웃</a>
												<a href="Movie_Review_File.jsp" class="sign">영화등록</a>
											</li>
										</c:if>	
									</nav>
								</div>
							</div>
							<a href="Movie_List_Search.jsp">
								<img class="search" src="img\icon_search_48px.png">
							</a>
						</div>
                    </div>
                </header>
                <div class="main_cont" iscommon="true">
                	<section class="main_top_banner event" style="background-image: url(&quot;https://www.moviebloc.com/images/event/gfsf_co_kr_cover4.png&quot;);">
                	</section>
                	<section class="section_list thumb_expand">
                		<div class="list_wrap expend_wrap">
                			<dl>
                				<dt class="home_tit_w more_con">
                					<text>넷플릭스</text>
                				</dt>
                				<div class="swp_video swp_small swp_detail_05 poster">
                					<div class="swiper-container swipe_layout swiper-container-horizontal">
                						<div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">
                							<dd class="swiper-slide main_swip expend_thumb swiper-slide-active">
                								<a href="/" class="">
                									<div class="movie_thumb" style="background-image: url(img/art_1584931096036_1ae72c.jpg;);">
                										
                									</div> 
                								</a>	
                							</dd>
                							<dd class="swiper-slide main_swip expend_thumb swiper-slide-active">
                								<a href="/" class="">
                									<div class="movie_thumb" style="background-image: url(img/unnamed.jpg;);">
                										
                									</div> 
                								</a>	
                							</dd>
                							<dd class="swiper-slide main_swip expend_thumb swiper-slide-active">
                								<a href="/" class="">
                									<div class="movie_thumb" style="background-image: url(img/asd.jpg;);">
                										
                									</div> 
                								</a>	
                							</dd>
                							<dd class="swiper-slide main_swip expend_thumb swiper-slide-active">
                								<a href="/" class="">
                									<div class="movie_thumb" style="background-image: url(img/zxc.jpg;);">
                										
                									</div> 
                								</a>	
                							</dd>
                						</div>
                					</div>
                				</div>
                			</dl>
                		</div>
                		<div class="list_wrap expend_wrap">
                			<dl>
                				<dt class="home_tit_w more_con">
                					<text>왓챠</text>
                				</dt>
                				<div class="swp_video swp_small swp_detail_05 poster">
                					<div class="swiper-container swipe_layout swiper-container-horizontal">
                						<div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">
                							<dd class="swiper-slide main_swip expend_thumb swiper-slide-active">
                								<a href="/" class="">
                									<div class="movie_thumb" style="background-image: url(img/FMX-689.jpg;);">
                										
                									</div> 
                								</a>
                							</dd>
                							<dd class="swiper-slide main_swip expend_thumb swiper-slide-active">
                								<a href="/" class="">
                									<div class="movie_thumb" style="background-image: url(img/67667_145409_4444.jpg;);">
                										
                									</div> 
                								</a>
                							</dd>
                							<dd class="swiper-slide main_swip expend_thumb swiper-slide-active">
                								<a href="/" class="">
                									<div class="movie_thumb" style="background-image: url(img/qwe123.jpg;);">
                										
                									</div> 
                								</a>
                							</dd>
                							<dd class="swiper-slide main_swip expend_thumb swiper-slide-active">
                								<a href="/" class="">
                									<div class="movie_thumb" style="background-image: url(img/monster-hunter-movie-poster-tony-jaa.jpg;);">
                										
                									</div> 
                								</a>
                							</dd>
                						</div>
                					</div>
                				</div>
                			</dl>
                		<div class="list_wrap expend_wrap">
                			<dl>
                				<dt class="home_tit_w more_con">
                					<text>디즈니</text>
                				</dt>
                				<div class="swp_video swp_small swp_detail_05 poster">
                					<div class="swiper-container swipe_layout swiper-container-horizontal">
                						<div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">
                							<dd class="swiper-slide main_swip expend_thumb swiper-slide-active">
                								<a href="/" class="">
                									<div class="movie_thumb" style="background-image: url(img/1917영화_포스터.jpg;);">
                										
                									</div> 
                								</a>
                							</dd>
                							<dd class="swiper-slide main_swip expend_thumb swiper-slide-active">
                								<a href="/" class="">
                									<div class="movie_thumb" style="background-image: url(img/백두산_영화_포스터.jpg;);">
                										
                									</div> 
                								</a>
                							</dd>
                							<dd class="swiper-slide main_swip expend_thumb swiper-slide-active">
                								<a href="/" class="">
                									<div class="movie_thumb" style="background-image: url(img/e77668ab6af61949d588c15981c5a0c6.jpg;);">
                										
                									</div> 
                								</a>
                							</dd>
                							<dd class="swiper-slide main_swip expend_thumb swiper-slide-active">
                								<a href="/" class="">
                									<div class="movie_thumb" style="background-image: url(img/25521337577E4BB31D.jpg;);">
                										
                									</div> 
                								</a>
                							</dd>
                						</div>
                					</div>
                				</div>
                			</dl>
                		<div class="list_wrap expend_wrap">
                			<dl>
                				<dt class="home_tit_w more_con">
                					<text>웨이브</text>
                				</dt>
                				<div class="swp_video swp_small swp_detail_05 poster">
                					<div class="swiper-container swipe_layout swiper-container-horizontal">
                						<div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">
                							<dd class="swiper-slide main_swip expend_thumb swiper-slide-active">
                								<a href="/" class="">
                									<div class="movie_thumb" style="background-image: url(img/qwe.jpg;);">
                										
                									</div> 
                								</a>
                							</dd>
                							<dd class="swiper-slide main_swip expend_thumb swiper-slide-active">
                								<a href="/" class="">
                									<div class="movie_thumb" style="background-image: url(img/c3021f8d501c4d1ea3143e9bd9e1f9b0.jpg;);">
                										
                									</div> 
                								</a>
                							</dd>
                							<dd class="swiper-slide main_swip expend_thumb swiper-slide-active">
                								<a href="/" class="">
                									<div class="movie_thumb" style="background-image: url(img/sdfg.jpg;);">
                										
                									</div> 
                								</a>
                							</dd>
                							<dd class="swiper-slide main_swip expend_thumb swiper-slide-active">
                								<a href="/" class="">
                									<div class="movie_thumb" style="background-image: url(img/hkUM5oI3L91t636564633519379444.jpg;);">
                										
                									</div> 
                								</a>
                							</dd>
                						</div>
                					</div>
                				</div>
                			</dl>
                	</section>
                </div>
            </div>
        </div>
    </div> 

</body>
		
</html>