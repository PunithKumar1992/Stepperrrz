package com.appfone.stepperz.Daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.appfone.stepperz.Dao.AdminMalleshwaramimggalleryDao;
import com.appfone.stepperz.pojo.StepMalleshwaramimages;
import com.appfone.stepperz.util.HibernateUtil;

public class AdminMalleshwaramimggalleryDaoimpl implements AdminMalleshwaramimggalleryDao {

	@Override
	public List getmalanimg() {
		SessionFactory  factory =HibernateUtil.getSessionFactory();
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		Query query= session.createQuery(" from StepMalleshwaramimages");
		List list = query.list();
		
		
		return list;
	}

	@Override
	public void deletemalaimg(int id) {
		SessionFactory factory= HibernateUtil.getSessionFactory();
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		Query query = session.createQuery("delete from StepMalleshwaramimages where image_id =:delimgid");
		query.setParameter("delimgid", id);
		int rowCount = query.executeUpdate();
		System.out.println("row count" +rowCount);
		t.commit();
		session.close();
		
		
	}

	@Override
	public void saveadminimg(StepMalleshwaramimages malaimg) {
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		session.saveOrUpdate(malaimg);
		t.commit();
		session.close();
		
	}

}
