package com.appfone.stepperz.Daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.appfone.stepperz.Dao.AdminSadashivvideogalleryDao;
import com.appfone.stepperz.pojo.StepSadashivnagarvideo;
import com.appfone.stepperz.util.HibernateUtil;

public class AdminSadashivvideogalleryDaoimpl implements AdminSadashivvideogalleryDao {

	@Override
	public List getSadavideos() {
		SessionFactory  factory =HibernateUtil.getSessionFactory();
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		Query query= session.createQuery(" from StepSadashivnagarvideo");
		List list = query.list();
		
		
		return list;
	}

	@Override
	public void deletevideo(int id) {
		SessionFactory factory= HibernateUtil.getSessionFactory();
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		Query query = session.createQuery("delete from StepSadashivnagarvideo where video_id =:delvidid");
		query.setParameter("delvidid", id);
		int rowCount = query.executeUpdate();
		System.out.println("row count" +rowCount);
		t.commit();
		session.close();
		
	}

	@Override
	public void savevideo(StepSadashivnagarvideo sadavideo) {
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		session.saveOrUpdate(sadavideo);
		t.commit();
		session.close();
	}

}
