package com.appfone.stepperz.Daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.appfone.stepperz.Dao.AdminKalayanvideogalDao;
import com.appfone.stepperz.pojo.StepKalyannagarvideo;
import com.appfone.stepperz.util.HibernateUtil;

public class AdminKalayanvideogalDaoimpl implements AdminKalayanvideogalDao {

	@Override
	public List getKalayanvideos() {
		SessionFactory  factory =HibernateUtil.getSessionFactory();
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		Query query= session.createQuery(" from StepKalyannagarvideo");
		List list = query.list();
		
		
		return list;
		
	}

	@Override
	public void deletevideo(int id) {
		SessionFactory factory= HibernateUtil.getSessionFactory();
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		Query query = session.createQuery("delete from StepKalyannagarvideo where video_id =:delvidid");
		query.setParameter("delvidid", id);
		int rowCount = query.executeUpdate();
		System.out.println("row count" +rowCount);
		t.commit();
		session.close();
		
	}

	@Override
	public void savevideo(StepKalyannagarvideo kalvideo) {
		
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		session.saveOrUpdate(kalvideo);
		t.commit();
		session.close();
	}

}
