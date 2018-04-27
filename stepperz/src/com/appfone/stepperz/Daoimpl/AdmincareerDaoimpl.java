package com.appfone.stepperz.Daoimpl;

import java.util.List;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.appfone.stepperz.Dao.AdmincareerDao;
import com.appfone.stepperz.pojo.StepBanner;
import com.appfone.stepperz.pojo.StepCareer;
import com.appfone.stepperz.util.HibernateUtil;

public class AdmincareerDaoimpl implements AdmincareerDao
{

	@Override
	public List getCareers() {
		SessionFactory factory= HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		Query query= session.createQuery("from StepCareer");
		List list= query.list();
				
		return list;
	}

	@Override
	public void saveCareer(StepCareer career) {
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		session.saveOrUpdate(career);
		t.commit();
		session.close();
		
	}

	@Override
	public void deleteSingleCareer(int id) {
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session= factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		Query query = session.createQuery("delete from StepCareer where career_id=:careerid");
		query.setParameter("careerid", id);
		int rowCount = query.executeUpdate();
		System.out.println("delete carrer complete");
		System.out.println("rowcount "+rowCount);
		t.commit();
		session.close();
		
	}

	@Override
	public StepCareer getSingleCareer(int id) {
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		StepCareer career = (StepCareer)session.get(StepCareer.class, id);
		
		t.commit();
		session.close();
		return career;
		
	}

}
