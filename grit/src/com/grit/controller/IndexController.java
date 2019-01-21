package com.grit.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;
import com.grit.lecture.model.LectureService;
import com.grit.lecture.model.LectureVO;

public class IndexController implements Controller {

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String memUserid=(String) request.getSession().getAttribute("memUserid");
		System.out.println("index session memUserid="+memUserid);
		LectureService lectureService=new LectureService();
		LectureVO cntvo=null;
		List<LectureVO> recommandList=null;
		List<LectureVO> regdateList=null;
		
		try {
			cntvo=lectureService.selectReadCnt();
			recommandList=lectureService.selectRecommand();
			regdateList=lectureService.selectRegdate();
		    
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		System.out.println("cntvo="+cntvo);
		request.setAttribute("cntvo", cntvo);
		
		System.out.println("recommandList="+recommandList);
		request.setAttribute("recommandList", recommandList);
		
		System.out.println("regdateList="+regdateList);
		request.setAttribute("regdateList", regdateList);
		
		
		return "/grit/index.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
