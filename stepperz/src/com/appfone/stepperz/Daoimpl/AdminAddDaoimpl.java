package com.appfone.stepperz.Daoimpl;


import java.util.List;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.appfone.stepperz.Dao.AdminAddDao;
import com.appfone.stepperz.pojo.StepAdminregistration;
import com.appfone.stepperz.pojo.StepCareer;
import com.appfone.stepperz.util.HibernateUtil;

public class AdminAddDaoimpl implements AdminAddDao {

	@Override
	public List getAdmins() {
		SessionFactory factory= HibernateUtil.getSessionFactory();
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		Query query = session.createQuery("from StepAdminregistration ");
		List list = query.list();
		
		return list;
	}

	@Override
	public void deleteAdmin(int id) {
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session= factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		Query query = session.createQuery("delete from StepAdminregistration where admin_id =:adid");
		query.setParameter("adid", id);
		int rowCount = query.executeUpdate();
		System.out.println("delete ads complete");
		System.out.println("rowcount "+rowCount);
		t.commit();
		session.close();
		
		
	}

	@Override
	public StepAdminregistration getSingleadmin(int id) {
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		StepAdminregistration admin = (StepAdminregistration)session.get(StepAdminregistration.class, id);
		
		t.commit();
		session.close();
		
		return admin;
	}

}
