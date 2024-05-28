package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingQuiz01 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 한글 깨짐 방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		// 오늘의 날짜는 20XX년 X월 XX일
		Date now = new Date();
		
		SimpleDateFormat sdf = new SimpleDateFormat("오늘의 날짜는 yyyy년 M월 dd일");
		out.println(sdf.format(now));
	}
	
}
