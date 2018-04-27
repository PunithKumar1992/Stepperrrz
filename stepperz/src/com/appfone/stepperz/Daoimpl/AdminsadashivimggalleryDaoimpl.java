package com.appfone.stepperz.Daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.appfone.stepperz.Dao.AdminsadashivimggalleryDao;
import com.appfone.stepperz.pojo.StepSadashivnagarimages;
import com.appfone.stepperz.util.HibernateUtil;

public class AdminsadashivimggalleryDaoimpl implements AdminsadashivimggalleryDao {

	@Override
	public List getsadashivimg() {
		SessionFactory  factory =HibernateUtil.getSessionFactory();
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		Query query= session.createQuery(" from StepSadashivnagarimages");
		List list = query.list();
		
		
		return list;
	}

	@Override
	public void deletesadimg(int id) {
		
		SessionFactory factory= HibernateUtil.getSessionFactory();
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		Query query = session.createQuery("delete from StepSadashivnagarimages where image_id =:delimgid");
		query.setParameter("delimgid", id);
		int rowCount = query.executeUpdate();
		System.out.println("row count" +rowCount);
		t.commit();
		session.close();
		
	}

	@Override
	public void saveadminimg(StepSadashivnagarimages sadaimg) {
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		session.saveOrUpdate(sadaimg);
		t.commit();
		session.close();
		
	}

	

}
