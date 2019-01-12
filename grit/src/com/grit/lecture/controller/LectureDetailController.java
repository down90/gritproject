package com.grit.lecture.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;

public class LectureDetailController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		String no=request.getParameter("no");
		
		
		
		
		return "/grit/lecture/lectureDetail.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
