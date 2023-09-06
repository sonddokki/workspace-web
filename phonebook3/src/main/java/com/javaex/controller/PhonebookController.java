package com.javaex.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaex.dao.PersonDao;
import com.javaex.vo.PersonVo;

@WebServlet("/PhonebookController")
public class PhonebookController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	// Get방식 요청이 들어왔을때 실행되는 메소드
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("PhonebookController");

		// 리스트
		// 1.dao를 통해서 전체 리스트데이터 가져오기

		PersonDao personDao = new PersonDao();
		List<PersonVo> personList = personDao.personSelect("");
		
		System.out.println(personList);
		
		// 리스트 화면(html) + date 응답을 해야됨
		// request data를 넣는다
		request.setAttribute("personList", personList);
		
		// list.jsp 에게 시킨다 (포워드)		
		RequestDispatcher rd = request.getRequestDispatcher("/list.jsp"); // jsp파일 위치를 적어넣어야함
		rd.forward(request, response);
	}

	// Post방식 요청이 들어왔을때 실행되는 메소드
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
