package com.appfone.stepperz.Daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.appfone.stepperz.Dao.AdminProfileDao;
import com.appfone.stepperz.util.HibernateUtil;

public class AdminProfileDaoimpl implements AdminProfileDao {

	@Override
	public List getAdminDetails(String user, String pass) {
		SessionFactory factory= HibernateUtil.getSessionFactory();
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		Query query =session.createQuery("from StepAdminregistration where admin_name=:name and admin_password=:password");
		query.setParameter("name", user);
		query.setParameter("password", pass);
		List list = query.list();
		
		return list;
	}

}
