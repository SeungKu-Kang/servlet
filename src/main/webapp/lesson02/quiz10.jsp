<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멜롱 차트</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

	<style>
		#wrap {height:1200px; width:1000px;}
		.logoBox {color:green;}
		.logoBox:hover {text-decoration:none; color:green;}
		#searchBox {width:400px;}
		.link {font-weight-bold;}
		.nav-link {color:#000;}
		.nav-link:hover {color:#666;}
		.artistInfo {height:250px}
	</style>
</head>
<%
// 아티스트 정보 

    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");

    
	// 아이유 노래 리스트 
    List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "팔레트");
    musicInfo.put("album", "Palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "좋은날");
    musicInfo.put("album", "Real");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "이민수");
    musicInfo.put("lyricist", "김이나");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "밤편지");
    musicInfo.put("album", "palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 253);
    musicInfo.put("composer", "제휘,김희원");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "삐삐");
    musicInfo.put("album", "삐삐");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "이종훈");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "스물셋");
    musicInfo.put("album", "CHAT-SHIRE");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "Blueming");
    musicInfo.put("album", "Love poem");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

%>
<body>
	<div id="wrap" class="container text-center my-4">
		<header class="d-flex">
			<div class="logo mr-4">
				<label><a class="mr-5 logoBox" href="/lesson02/quiz10.jsp"><h3>Melong</h3></a></label>
			</div>
			<div class="search">
				<form method="get" action="/lesson02/quiz10_1.jsp">
					<div class="input-group ml-3">
  						<input id="searchBox" name="search" type="text" class="form-control">
  						<div class="input-group-append">
	    					<button type="submit" class="btn btn-info">검색</button>						
  						</div>
					</div>
				</form>
			</div>
		</header>
		<div class="contents mt-2">
			<nav class="menu d-flex align-items-center mb-3">
				<ul class="nav nav-fill w-100">
					<li class="font-weight-bold"><a class="nav-link" href="#">멜롱챠트</a></li>
					<li class="font-weight-bold"><a class="nav-link" href="#">최신음악</a></li>
					<li class="font-weight-bold"><a class="nav-link" href="#">장르음악</a></li>
					<li class="font-weight-bold"><a class="nav-link" href="#">멜론DJ</a></li>
					<li class="font-weight-bold"><a class="nav-link" href="#">뮤직어워드</a></li>
				</ul>
				<%
					String name = request.getParameter("name");
					String debute = request.getParameter("debute");
					String agency = request.getParameter("agency");
				%>
			</nav>
			<div class="artistInfo d-flex border border-success w-100 p-4">
				<img src="<%=artistInfo.get("photo") %>" alt="가수 이미지" width="200px">
				<div class="text-left ml-3">
					<h3 class="font-weight-bold"><%= artistInfo.get("name") %></h3>
					<h5><%= artistInfo.get("agency") %></h5>
					<h5><%= artistInfo.get("debute") %> 데뷔</h5>
				</div>
			</div>
			<section class="playlist font-weight-bold">
				<h3 class="text-left mt-3">곡 목록</h3>
				<hr>
				<table class="table text-center">
					<thead>
						<tr>
							<th>no</th>
							<th>제목</th>
							<th>앨범</th>
						</tr>
					</thead>
					<tbody>
					<%
						for (Map<String,Object> music : musicList) {
					%>
						<tr>
							<td><%= music.get("id") %></td>
							<td><a href="/lesson02/quiz10_1.jsp?id=<%= music.get("id") %>"><%= music.get("title") %></a></td>
							<td><%= music.get("album") %></td>
						</tr>
					<%
						}
					%>
					</tbody>
				</table>
			</section>
		</div>
		<footer class="text-left">
			<hr>
			<div class="ml-2">
				<small class="text-secondary">Copyright 2021. melong All Rights Reserved</small>			
			</div>
		</footer>
	</div>
</body>
</html>