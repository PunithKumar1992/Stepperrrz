package com.appfone.stepperz.Daoimpl;

import org.hibernate.Session;

import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.appfone.stepperz.Dao.FeedbackDao;
import com.appfone.stepperz.pojo.StepFeedback;
import com.appfone.stepperz.util.HibernateUtil;

public class FeedbackDaoimpl implements FeedbackDao {

	@Override
	public void saveFeedback(StepFeedback feedback) {
		
		SessionFactory factory= HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		
		session.save(feedback);
		t.commit();
		session.close();
		
		
	}
	

}
