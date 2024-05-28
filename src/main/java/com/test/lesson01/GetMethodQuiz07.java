package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz07")
public class GetMethodQuiz07 extends HttpServlet {
	
	@Override
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// response header setting
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		// request params
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		int price = Integer.valueOf(request.getParameter("price"));
		
		// response 출력(분기)
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>주문 결과</title></head><body>");
		if (address.startsWith("서울시") == false) {
			out.print("배달 불가 지역입니다.");
			// return 을 적고 싶다면 아래 else if대신에 if를 적고 대신 모든 if절 마다 out.print("</body></html>"); 이 들어가야 가능
		} else if (card.contains("신한")) {
			out.print("결제 불가 카드입니다.");
		} else {
			out.print(address + "<b>배달 준비중</b><br>");
			out.print("결제 금액:" + price + "원");
		}
		out.print("</body></html>");
	}
}
