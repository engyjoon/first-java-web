package com.edu.test;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class TestServletContextListener2 implements ServletContextListener {

	public TestServletContextListener2() {
		System.out.println("TestServletContextListener2 객체 생성");
	}
	
	@Override
	public void contextInitialized(ServletContextEvent e) {
		System.out.println("ServletContext2 객체 초기화");
	}
	
	@Override
	public void contextDestroyed(ServletContextEvent e) {
		System.out.println("ServletContext2 객체 해제");
	}
}
