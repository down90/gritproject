package com.grit.lecture.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;
import com.grit.lecture.model.LectureService;
import com.grit.lecture.model.LectureVO;

public class LectureDetailController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		String no=request.getParameter("c_no");
		if(no==null||no.isEmpty()) {
			request.setAttribute("msg", "잘못된 url");
			request.setAttribute("url", "/grit/grit/index.do");
			
			return "/grit/common/message.jsp";
		}
		
		LectureVO vo=null;
		LectureService service=new LectureService();
		try {
			vo=service.selectClassByNo(Integer.parseInt(no));
		}catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("vo",vo);
		System.out.println("vo="+vo);
		
		return "/grit/lecture/lectureDetail.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
