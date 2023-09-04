package com.javaex.gugudan;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 필드 생성자 메소드gs 메소드일반


/**
 * Servlet implementation class Gugudan
 */
@WebServlet("/Gugudan")
public class Gugudan extends HttpServlet {
	
	
	// 필드 -- 현재 없어도 됨
//	private static final long serialVersionUID = 1L; 
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	// 생성자 -- 디폴트사용이라 현재 없어도 됨
//    public Gugudan() {
//        super();  // 부모부르기
//    }

	
	// 메소드gs -- 없음
	
	// 메소드일반
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int dan = Integer.parseInt( request.getParameter("dan") );
		System.out.println(dan);
		
		PrintWriter writer = response.getWriter();
		
		writer.println("<table border='1'>");
		
		writer.println("<h1>구구단</h1>");
		writer.println("<h2>"+dan+"단</h2>");
		
		for(int i=1;i<=9;i++) {
		writer.println("     <tr>");
		writer.println("         <td>"+dan+"</td> <td>"+i+"</td> <td>"+dan*i+"</td>");
		writer.println("     </tr>");
		}
		writer.println("</table>");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
