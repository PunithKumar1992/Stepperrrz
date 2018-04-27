package com.appfone.stepperz.Daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.appfone.stepperz.Dao.AdmintestimonialsDao;
import com.appfone.stepperz.pojo.StepTestimonials;
import com.appfone.stepperz.util.HibernateUtil;

public class AdmintestimonialsDaoimpl implements AdmintestimonialsDao {

	@Override
	public List getAllTestimonials() {
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session =factory.openSession();
		Transaction t=session.beginTransaction();
		Query query=session.createQuery("from StepTestimonials");
		List list=query.list();
		return list;
	}

	@Override
	public void saveTestimonial(StepTestimonials test) {
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		session.saveOrUpdate(test);
		t.commit();
		session.close();

	}

	@Override
	public void deleteSingleTesti(int id) {
		System.out.println("admin testimonial delete method is invoked");
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		Query query = session.createQuery("delete from StepTestimonials where test_id=:testid");
		query.setParameter("testid", id);
		int res = query.executeUpdate();
		System.out.println("result of deleting is " +res);
		t.commit();
		session.close();
		
	}

	@Override
	public StepTestimonials getSingleTestimonial(int id) {
		SessionFactory factory= HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		StepTestimonials test = (StepTestimonials)session.get(StepTestimonials.class, id);
		return test;
	}

}
