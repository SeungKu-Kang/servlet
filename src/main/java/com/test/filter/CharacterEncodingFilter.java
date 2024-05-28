package com.test.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/*") // 특정한 곳에 필터를 거는 것이 아닌 모든 곳에 필터를 걸때 표현
public class CharacterEncodingFilter implements Filter{

	@Override
	public void doFilter(
			ServletRequest request, 
			ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
			
		// 필터를 통과할 때 인코딩 설정
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		chain.doFilter(request, response);
	}

}
