package com.appfone.stepperz.Daoimpl;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Projections;

import com.appfone.stepperz.Dao.BannerDao;
import com.appfone.stepperz.pojo.StepBanner;
import com.appfone.stepperz.util.HibernateUtil;

public class BannerDaoimpl  implements BannerDao{

	int size=0;
	String title[];
	String description[];
	String bannerimg[];
	@Override
	public  int getbannerCount() {
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		Query query=session.createQuery("select count(*) from StepBanner");
		List list=query.list();
		Iterator itr=list.iterator();
		size=Integer.parseInt(itr.next().toString());
		
		return size;
	}

	@Override
	public String[] getbannerTitle() {
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		Criteria criteria= session.createCriteria(StepBanner.class);
		criteria.setProjection(Projections.property("banner_title"));
		List list = criteria.list();
		title = new String[size];
		Iterator itr=list.iterator();
		int i=0;
		while(itr.hasNext())
		{
			title[i]=itr.next().toString();
			i++;
			
		}
		
		return title;
	}

	@Override
	public String[] getbannerDisc() {
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		Criteria criteria= session.createCriteria(StepBanner.class);
		criteria.setProjection(Projections.property("banner_desc"));
		List list = criteria.list();
		description = new String[size];
		Iterator itr=list.iterator();
		int i=0;
		while(itr.hasNext())
		{
			description[i]=itr.next().toString();
			i++;
			
		}
		
		return description;
	}

	@Override
	public String[] getbannerimg() {
	
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		Criteria criteria= session.createCriteria(StepBanner.class);
		criteria.setProjection(Projections.property("banner_img"));
		List list = criteria.list();
		bannerimg = new String[size];
		Iterator itr=list.iterator();
		int i=0;
		while(itr.hasNext())
		{
			bannerimg[i]=itr.next().toString();
			i++;
			
		}
		
		return bannerimg;
		
	}
	
	
		
	
	
	
}
