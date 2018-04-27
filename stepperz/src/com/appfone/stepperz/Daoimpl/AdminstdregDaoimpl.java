package com.appfone.stepperz.Daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.appfone.stepperz.Dao.AdminstdregDao;
import com.appfone.stepperz.pojo.StepRegistration;
import com.appfone.stepperz.util.HibernateUtil;

public class AdminstdregDaoimpl implements AdminstdregDao {

	@Override
	public void savestdreg(StepRegistration reg) {
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		session.saveOrUpdate(reg);
		t.commit();
		session.close();
		
	}

	@Override
	public List getSavedreglist() {
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		Query query=session.createQuery("from StepRegistration");
		List list=query.list();
		
			return list;
	}

	@Override
	public void deletesinglestdreg(int id) {
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session= factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		Query query = session.createQuery("delete from StepRegistration where reg_id =:stdid");
		query.setParameter("stdid", id);
		int rowCount = query.executeUpdate();
		System.out.println("delete stdreg complete");
		System.out.println("rowcount "+rowCount);
		t.commit();
		session.close();
		
		
	}

}
