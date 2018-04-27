package com.appfone.stepperz.Daoimpl;

import java.util.Iterator;


import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Projections;

import com.appfone.stepperz.Dao.AdvertisementDao;
import com.appfone.stepperz.pojo.StepAdvertisement;
import com.appfone.stepperz.util.HibernateUtil;

public class AdvertisementDaoimpl implements AdvertisementDao {

	int size=0;
	String[] ads_type;
	String[] ads_images;
	@Override
	public int getadscount() {
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		Query query=session.createQuery("select count(*) from StepAdvertisement");
		List list= query.list();
		Iterator itr=list.iterator();
		size=Integer.parseInt(itr.next().toString());
		return size;
	}

	@Override
	public String[] getadstype() {
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		ads_type=new String[size];
		Criteria criteria = session.createCriteria(StepAdvertisement.class);
		criteria.setProjection(Projections.property("ads_type"));
		List list= criteria.list();
		Iterator itr= list.iterator();
		int i=0;
		while(itr.hasNext())
		{
			ads_type[i]=itr.next().toString();
			i++;
		}
		return ads_type;
		
	}

	@Override
	public String[] getadsimage() {
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		ads_images=new String[size];
		Criteria criteria = session.createCriteria(StepAdvertisement.class);
		criteria.setProjection(Projections.property("ads_images"));
		List list= criteria.list();
		Iterator itr= list.iterator();
		int i=0;
		while(itr.hasNext())
		{
			ads_images[i]=itr.next().toString();
			i++;
		}
		return ads_images;
	}

	
	
}
