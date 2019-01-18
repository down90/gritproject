package com.grit.lecture.controller;


import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;
import com.grit.lecture.model.LectureService;
import com.grit.lecture.model.LectureVO;

public class LectureRegisterOkController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		Date date=new Date();
		
		
		
		String cName=request.getParameter("cName");
		String cTeacherIntro=request.getParameter("cTeacherIntro");
		String cSummary=request.getParameter("cSummary");
		String cDetail=request.getParameter("cDetail");
		Timestamp cDate=(Timestamp) date;
		String cLocation=request.getParameter("cLocation");
		String cMaxPerson=request.getParameter("cMaxPerson");
		String cPay=request.getParameter("cPay");
		String cMoney=request.getParameter("cMoney");
		String cAccount=request.getParameter("cAccount");
		String cBank=request.getParameter("cBank");
		String memUserid="whdtjr123";
		
		LectureVO vo=new LectureVO();
		vo.setcName(cName);
		vo.setcTeacherIntro(cTeacherIntro);
		vo.setcSummary(cSummary);
		vo.setcDetail(cDetail);
		vo.setcDate(cDate);
		vo.setcLocation(cLocation);
		vo.setcMaxPerson(Integer.parseInt(cMaxPerson));
		vo.setcPay(cPay);
		vo.setcMoney(Integer.parseInt(cMoney));
		vo.setcAccount(cAccount);
		vo.setcBank(cBank);
		vo.setMemUserid(memUserid);
		
		LectureService service=new LectureService();
		try {
			int cnt=service.insertClass(vo);
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return null;
	}

	@Override
	public boolean isRedirect() {

		return false;
	}

}
