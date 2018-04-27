package com.appfone.stepperz.Daoimpl;

import org.hibernate.Session;

import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.appfone.stepperz.Dao.CareerDao;
import com.appfone.stepperz.pojo.StepCareer;
import com.appfone.stepperz.util.HibernateUtil;

public class CareerDaoimpl  implements CareerDao{

	@Override
	public void savecareer(StepCareer career) {
		
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session = factory.openSession();
		Transaction t= session.beginTransaction();
		t.begin();
		session.save(career);
		t.commit();
		session.close();
		
		
	}

}
