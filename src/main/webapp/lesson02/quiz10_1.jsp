<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>노래 세부사항</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

	<style>
		#wrap {height:1200px; width:1000px;}
		#searchBox {width:400px;}
		.link {font-weight-bold;}
		.nav-link {color:#000;}
		.nav-link:hover {color:#666;}
	</style>
</head>
<body>
	<div id="wrap" class="container text-center my-4">
		<header class="d-flex">
			<div class="logo">
				<h3 class="text-success mr-5">Melong</h3>
			</div>
			<div class="search">
				<form method="get" action="/lesson02/quiz10_1.jsp">
					<div class="input-group ml-3">
  						<input id="searchBox" type="text" class="form-control">
    					<button type="submit" class="btn btn-info">검색</button>
					</div>
				</form>
			</div>
		</header>
		<div class="contents mt-4">
			<nav class="menu d-flex align-items-center mb-3">
				<ul class="nav nav-fill w-100">
					<li class="font-weight-bold"><a class="nav-link" href="#">멜롱챠트</a></li>
					<li class="font-weight-bold"><a class="nav-link" href="#">최신음악</a></li>
					<li class="font-weight-bold"><a class="nav-link" href="#">장르음악</a></li>
					<li class="font-weight-bold"><a class="nav-link" href="#">멜론DJ</a></li>
					<li class="font-weight-bold"><a class="nav-link" href="#">뮤직어워드</a></li>
				</ul>
	<%
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
    
	int id = Integer.parseInt(request.getParameter("id"));
	Map<String, Object> target = new HashMap<>();
	for (Map<String, Object> info : musicList) {
		if ((Integer) info.get("id") == id) {
			target = info;
			break;
		}
	}
	%>
			</nav>
			<div class="musicInfo d-flex border border-success w-100 p-4">
				<img src="<%= target.get("thumbnail") %>" alt="앨범 표지" width="200px">
				<div class="text-left ml-3">
					<div class="display-3"><%= target.get("title")%></div>
					<small class="text-success font-weight-bold"><%=  target.get("singer") %></small><br><br>
					<div class="d-flex font-weight-light">
						<div class="mr-4">
							<span>앨범</span><br>
							<span>재생시간</span><br>
							<span>작곡가</span><br>
							<span>작사가</span>
						</div>
						<div>
							<span><%= target.get("album") %></span><br>
							<span><%= (int)target.get("time")/60%>:<%= (int)target.get("time")%60 %></span><br>
							<span><%= target.get("composer")%></span><br>
							<span><%= target.get("lyricist")%></span>
						</div>
						
					</div>
				</div>
			</div>
			<section class="playlist font-weight-bold text-left">
				<h3 class="mt-3">가사</h3>
				<hr>
				<span>가사 정보 없음</span><br><br>
			</section>
		</div>
		<footer class="text-left">
			<hr>
			<small class="text-secondary">Copyright 2021. melong All Rights Reserved</small>
		</footer>
	</div>
</body>
</html>