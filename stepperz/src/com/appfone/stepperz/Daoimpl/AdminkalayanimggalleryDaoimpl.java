package com.appfone.stepperz.Daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.appfone.stepperz.Dao.AdminkalayanimggalleryDao;
import com.appfone.stepperz.pojo.StepKalyannagarimages;
import com.appfone.stepperz.util.HibernateUtil;

public class AdminkalayanimggalleryDaoimpl implements AdminkalayanimggalleryDao {

	@Override
	public List getkalayanimg() {
		SessionFactory  factory =HibernateUtil.getSessionFactory();
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		Query query= session.createQuery(" from StepKalyannagarimages");
		List list = query.list();
		
		
		return list;
		
	}

	@Override
	public void deletekalaimg(int id) {
		
		SessionFactory factory= HibernateUtil.getSessionFactory();
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		Query query = session.createQuery("delete from StepKalyannagarimages where image_id =:delimgid");
		query.setParameter("delimgid", id);
		int rowCount = query.executeUpdate();
		System.out.println("row count" +rowCount);
		t.commit();
		session.close();
		
		
		
	}

	@Override
	public void saveadminimg(StepKalyannagarimages kalaimg) {
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		session.saveOrUpdate(kalaimg);
		t.commit();
		session.close();
	}

}
