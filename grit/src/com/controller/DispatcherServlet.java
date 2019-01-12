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
	private Properties props;//mapping ������ ������ �÷���
    
	@Override
	public void init(ServletConfig config) throws ServletException {
		//super.init(config);
		//mapping ����(CommandPro.properties)�� �о properties �÷��ǿ� ����
		
		//1. �������� �о����
		String configFile=config.getInitParameter("configFile");
		//=>CommandPro.properties
		System.out.println("configFile= "+configFile);
		
		//2. �������� ���� ��� ���ϱ�
		String realConfigFile=config.getServletContext().getRealPath(configFile);
		System.out.println("realConfigFile= "+realConfigFile);
		
		//�׽�Ʈ ���
		realConfigFile="C:\\Users\\user\\Desktop\\gritlocal\\gritproject\\grit\\WebContent\\grit\\config\\CommandPro.properties";
		System.out.println("�׽�Ʈ ���= "+realConfigFile+"\n\n");
		
		//3. Properties �÷��ǿ� �����Ѵ�.
		props=new Properties();
		
		FileInputStream fis=null;
		try {
			fis=new FileInputStream(realConfigFile);
			props.load(fis);//load �޼��带 �̿���
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
		//=>��ɾ� ó�� Ŭ������ ���Ͽ� �ش� Ŭ������ �޼��带 ȣ���Ѵ�
		//- ��û �� �ش� URI���� ��ɾ�(contextPath�� ������ url)�� �����Ͽ� Properties �÷��ǿ��� Ű(��ɾ�)�� �ش��ϴ�
		//value�� ��ɾ� ó�� Ŭ������ ���Ѵ�
		//- ��ɾ� ó�� Ŭ������ �޼��带 ȣ���� �� ���������� ���� �޾Ƽ� ������ �Ѵ�
		
		//
		response.setContentType("charset=utf-8");
		//1.
		request.setCharacterEncoding("utf-8");
		
		
		
		//1. ��û URI ������
		String uri=request.getRequestURI();	//=> /mymvc/tips/book.do
		System.out.println("uri= "+uri);
		
		//2. uri���� Context path�� �����ؼ� ��ɾ� �κи� �����ϱ�
		String contextPath=request.getContextPath();//=> /mymvc
		System.out.println("contextPath="+contextPath);
		System.out.println("uri.indexOf(contextPath)="+uri.indexOf(contextPath));
		
		//��ɾ ����
		String key="";
		if(uri.indexOf(contextPath)==0) {
			key=uri.substring(contextPath.length());	//=> /tips/book.do
		}
		System.out.println("key="+key);//��ɾ�
		
		//��ɾ �ش��ϴ� ��ɾ� ó�� Ŭ���� ������
		//getProperty�޼��带 ����ص��� key�� ���� value�� ���� ���ϴ� �޼���
		String commandStr=props.getProperty(key);	//���ڿ� 
		//=> com.tips.controller.BookController2
		System.out.println("��ɾ� ó�� Ŭ����:"+commandStr+"\n");
		
		try {
			//���ڿ��� Ŭ������
			Class commandClass=Class.forName(commandStr);//forName()�� static �޼�����
			//���ڿ� commandStr�� Ŭ������ �������ִ� forName() �޼���
			
			//Ŭ������ �ν��Ͻ���
			Controller controller=(Controller)commandClass.newInstance();
			//��ü�� �����ϱ� ���ؼ� newInstance() �޼��带 ����ϰ� ��ȯŸ���� object �̱� ������ �ٿ� ĳ������ �ؾ��ϴµ�
			//������ controller�� ���������� �޾ƿ� �� �ִ� �������̽���  Controller�̱� ������ Controller�������̽��� ����
			
			//�޼��� ȣ��
			String resultPage=controller.requestProcess(request, response);
			System.out.println("resultPage= "+resultPage+"\n\n");
			
			//forward/redirect ���ο� ���� ó��
			if(controller.isRedirect()) {
				response.sendRedirect(contextPath+resultPage);
				//=> /mymvc + /tips/book.do => /mymvc/tips/book.do
			}else {
				//�ش� �� �������� ������
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
