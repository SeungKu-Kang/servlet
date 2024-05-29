<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>
	<!-- 1번 -->
	<!-- jsp의 선언문 <%! %> 문법을 사용해서 1부터 N까지의 합을 구하는 함수를 만드세요. -->
	<%!	
		// 메소드
		public int sum(int end) {
			int sum = 0;
			for (int i = 1 ; i <= end; i++) {
				sum += i;
			}
			return sum;
		}
	%>
	<h2><b>1부터 50까지의 합은 <%= sum(50) %>입니다.</b></h2>
	
	<!-- 2번 -->
	<!-- 
	스크립틀릿(scriptlet) <% %> 문법을 사용해서 주어진 점수들의 평균을 구하세요.
	 -->
	<%
		int[] scores = {81, 90, 100, 95, 80};
		double sum = 0;
		for (int i = 0 ; i < scores.length ; i++) {
			sum += scores[i];
		}
		
	%> 
	<h2><b>평균 점수는 <%= sum / scores.length %> 입니다.</b></h2>
	<!-- 3번 -->
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int score = 0; 
		for (int i = 0 ; i < scoreList.size(); i++) {
			// out.print(scoreList.get(i));
			if (scoreList.get(i).equals("O")) {
				score += 100 / scoreList.size();
			}
		}
		// out.print(score);
	%>
	<h2><b>채점 결과는 <%= score %> 입니다.</b></h2>
	<!-- 4번 -->
	<%
		String birthDay = "20010820";
		int age = (2024 - (Integer.valueOf(birthDay.substring(0, 4))));
	%>
	<h2><b><%= birthDay %>의 나이는 <%= age %>세입니다.</b></h2>
	
	
</body>
</html>