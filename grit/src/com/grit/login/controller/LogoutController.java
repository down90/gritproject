package com.grit.login.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;

public class LogoutController implements Controller {

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		request.getSession().removeAttribute("memUserid");//각각개별적으로 removeAttribute로 날려버린다
		request.getSession().removeAttribute("memName");
		//4.
		return "/grit/index.do";
	}

	@Override
	public boolean isRedirect() {
		return true;
	}

}
