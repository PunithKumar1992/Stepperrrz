package com.appfone.stepperz.util;

import org.hibernate.SessionFactory;

import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	
	
	
	public static  SessionFactory getSessionFactory()
	{
		Configuration cfg = new Configuration();
	    cfg.configure("hibernate.cfg.xml");
	    SessionFactory factory = cfg.buildSessionFactory();
		
	    return factory;
	}

}
