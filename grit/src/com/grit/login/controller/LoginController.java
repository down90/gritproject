package com.grit.login.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;

public class LoginController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		//modal창은 index.jsp로 보내야함 대신 controller들을 전부 별개로 만들어줄것!
		//테스트 결과 파라미터 모두 정상적으로 읽어옴
		//login 처리
		String memUserid=request.getParameter("memUserid");
		String memPwd=request.getParameter("memPwd");
		System.out.println("memUserid="+memUserid+", memPwd="+memPwd);
		
		return "/grit/index.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
