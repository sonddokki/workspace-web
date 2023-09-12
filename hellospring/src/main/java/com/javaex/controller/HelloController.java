package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {

	@RequestMapping("/hello")
	public String hello() {
		System.out.println("hellospring 헬로스프링 $!@#$$@");
		return "/WEB-INF/index.jsp";
	}

}
