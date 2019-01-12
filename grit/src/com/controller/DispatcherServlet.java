package com.controller;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/DispatcherServlet")
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Properties props;//mapping 파일을 저장할 컬렉션
    
	@Override
	public void init(ServletConfig config) throws ServletException {
		//super.init(config);
		//mapping 파일(CommandPro.properties)을 읽어서 properties 컬렉션에 저장
		
		//1. 매핑파일 읽어오기
		String configFile=config.getInitParameter("configFile");
		//=>CommandPro.properties
		System.out.println("configFile= "+configFile);
		
		//2. 물리적인 실제 경로 구하기
		String realConfigFile=config.getServletContext().getRealPath(configFile);
		System.out.println("realConfigFile= "+realConfigFile);
		
		//테스트 경로
		realConfigFile="C:\\Users\\user\\Desktop\\gritlocal\\gritproject\\grit\\WebContent\\grit\\config\\CommandPro.properties";
		System.out.println("테스트 경로= "+realConfigFile+"\n\n");
		
		//3. Properties 컬렉션에 저장한다.
		props=new Properties();
		
		FileInputStream fis=null;
		try {
			fis=new FileInputStream(realConfigFile);//매개변수로 물리적인 실제 경로가 필요
			props.load(fis);//load 메서드를 이용함
		}catch (FileNotFoundException e) {
			e.printStackTrace();
		}catch (IOException e) {
			e.printStackTrace();
		}finally {
			try {
				fis.close();
			}catch (IOException e) {
				e.printStackTrace();
			}
		}
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestPro(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestPro(request, response);
	
	}


	private void requestPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//=>명령어 처리 클래스를 구하여 해당 클래스의 메서드를 호출한다
		//- 요청 시 해당 URI에서 명령어(contextPath를 제외한 url)를 추출하여 Properties 컬렉션에서 키(명령어)에 해당하는
		//value인 명령어 처리 클래스를 구한다
		//- 명령어 처리 클래스의 메서드를 호출한 후 뷰페이지를 리턴 받아서 포워드 한다
		
		//
		response.setContentType("charset=utf-8");
		//1.
		request.setCharacterEncoding("utf-8");
		
		
		
		//1. 요청 URI 얻어오기
		String uri=request.getRequestURI();	//=> /mymvc/tips/book.do
		System.out.println("uri= "+uri);
		
		//2. uri에서 Context path를 제거해서 명령어 부분만 추출하기
		String contextPath=request.getContextPath();//=> /mymvc
		System.out.println("contextPath="+contextPath);
		System.out.println("uri.indexOf(contextPath)="+uri.indexOf(contextPath));
		
		//명령어만 추출
		String key="";
		if(uri.indexOf(contextPath)==0) {
			key=uri.substring(contextPath.length());	//=> /tips/book.do
		}
		System.out.println("key="+key);//명령어
		
		//명령어에 해당하는 명령어 처리 클래스 얻어오기
		//getProperty메서드를 기억해두자 key에 대한 value의 값을 구하는 메서드
		String commandStr=props.getProperty(key);	//문자열 
		//=> com.tips.controller.BookController2
		System.out.println("명령어 처리 클래스:"+commandStr+"\n");
		
		try {
			//문자열을 클래스로
			Class commandClass=Class.forName(commandStr);//forName()은 static 메서드임
			//문자열 commandStr을 클래스로 변경해주는 forName() 메서드
			
			//클래스를 인스턴스로
			Controller controller=(Controller)commandClass.newInstance();
			//객체를 생성하기 위해서 newInstance() 메서드를 사용하고 반환타입이 object 이기 때문에 다운 캐스팅을 해야하는데
			//각각의 controller를 공통적으로 받아올 수 있는 인터페이스가  Controller이기 때문에 Controller인터페이스로 받음
			
			//메서드 호출
			String resultPage=controller.requestProcess(request, response);
			System.out.println("resultPage= "+resultPage+"\n\n");
			
			//forward/redirect 여부에 따라 처리
			if(controller.isRedirect()) {
				response.sendRedirect(contextPath+resultPage);
				//=> /mymvc + /tips/book.do => /mymvc/tips/book.do
			}else {
				//해당 뷰 페이지로 포워드
				RequestDispatcher dispatcher=request.getRequestDispatcher(resultPage);
				dispatcher.forward(request, response);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}catch (InstantiationException e) {
			e.printStackTrace();
		}catch (IllegalAccessException e) {
			e.printStackTrace();
		}catch (Throwable e) {
			e.printStackTrace();
		}
	}//
	
	
}
