<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
#columns {
	column-width: 252px;
	column-gap: 15px;
	padding: 40px;
	padding-top: 10%;
}

#columns figure {
	display: inline-block;
	border: none;
	margin: 0;
	margin-bottom: 15px;
	padding: 3px;
}

#columns figure img {
	width: 273px;
}

#columns figure figcaption {
	padding: 10px;
	margin-top: 11px;
}

#columns a {
	border: none;
}

</style>
<title>Insert title here</title>
	<script>
		function searchCheck(form){
			if(form.keyword.value==""){
				alert("검색 단어를 입력하세요.");
				form.keyword.focus();
				return;
			}
			search.submit();
		}
		function search(){
			var keyword = document.getElementById("keyword").value;
			location.href="moviesearch?keyword="+keyword;
		}
	</script>	
</head>
<body>
	<H2>Movie_List_Search.jsp</H2>
		
	<form action="search()" name="search" method="get">
		<input type="text" name="keyword" />
		<input type="button" value="검색" onclick="searchCheck(form)"/>
	</form>
	<div id="columns">
		<c:forEach var="movie" items="${movieList}">
		<figure class="thumbnails">
			<a href="" onclick=""><img src="images/${movie.mimage}">
			</a>
		</figure>
		</c:forEach>
	</div>
</body>
</html>