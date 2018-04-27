package com.appfone.stepperz.Daoimpl;

import java.util.List;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.appfone.stepperz.Dao.AdminadsDao;
import com.appfone.stepperz.pojo.StepAdvertisement;
import com.appfone.stepperz.util.HibernateUtil;

public class AdminadsDaoimpl  implements AdminadsDao{

	@Override
	public List getads() {
	SessionFactory factory=HibernateUtil.getSessionFactory();
	Session session = factory.openSession();
	Transaction t = session.beginTransaction();
	t.begin();
	Query query=session.createQuery("from StepAdvertisement ");
	List list=query.list();
	
		return list;
	}

	@Override
	public void saveads(StepAdvertisement ads) {
	
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		session.saveOrUpdate(ads);
		t.commit();
		session.close();
	}

	@Override
	public void deletead(int id) {
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session= factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		Query query = session.createQuery("delete from StepAdvertisement where ads_id =:adsid");
		query.setParameter("adsid", id);
		int rowCount = query.executeUpdate();
		System.out.println("delete ads complete");
		System.out.println("rowcount "+rowCount);
		t.commit();
		session.close();
		
	}

}
