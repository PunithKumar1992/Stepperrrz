package com.appfone.stepperz.Daoimpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.appfone.stepperz.Dao.AdminregistrationDao;
import com.appfone.stepperz.pojo.StepAdminregistration;
import com.appfone.stepperz.util.HibernateUtil;

public  class AdminregistrationDaoimpl implements AdminregistrationDao{

	@Override
	public void saveAdmin(StepAdminregistration admin) {
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t=session.beginTransaction();
		t.begin();
		session.saveOrUpdate(admin);
		t.commit();
		session.close();
		
	}
	

}
