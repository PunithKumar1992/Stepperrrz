package com.appfone.stepperz.Daoimpl;

import java.util.List;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.appfone.stepperz.Dao.AdminfeedbackDao;
import com.appfone.stepperz.util.HibernateUtil;

public class AdminfeedbackDaoimpl implements AdminfeedbackDao{

	@Override
	public List getFeedbacks() {
	SessionFactory factory= HibernateUtil.getSessionFactory();
	Session session=factory.openSession();
	Transaction t = session.beginTransaction();
	t.begin();
	Query query=session.createQuery("from StepFeedback");
	List list = query.list();
	
	
	
		return list;
	}

	@Override
	public void deletefeedback(int id) {
	
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session= factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		Query query = session.createQuery("delete from StepFeedback where feedback_id =:feedid");
		query.setParameter("feedid", id);
		int rowCount = query.executeUpdate();
		System.out.println("delete feedback complete");
		System.out.println("rowcount "+rowCount);
		t.commit();
		session.close();
		
	}

}
