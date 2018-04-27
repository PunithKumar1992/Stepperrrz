package com.appfone.stepperz.Daoimpl;

import java.util.Iterator;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.appfone.stepperz.Dao.AdminbannerDao;
import com.appfone.stepperz.pojo.StepBanner;
import com.appfone.stepperz.util.HibernateUtil;

public class AdminbannerDaoimpl  implements AdminbannerDao {

	@Override
	public List getbanners() {
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session =factory.openSession();
		Transaction t=session.beginTransaction();
		Query query=session.createQuery("from StepBanner ");
		List list=query.list();
		Iterator itr = list.iterator();
		while(itr.hasNext())
		{
			System.out.println(itr.next());
		}
		
		return list;
	}

	
	public void Savebanner(StepBanner banner)
	{
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		session.saveOrUpdate(banner);
		t.commit();
		session.close();
		
		
	}


	@Override
	public void deletebanner(int id, String img) {
		System.out.println("delete Stepbanner method is invoked");
	SessionFactory factory = HibernateUtil.getSessionFactory();
	Session session= factory.openSession();
	Transaction t = session.beginTransaction();
	t.begin();
	Query query = session.createQuery("delete from StepBanner where banner_id=:bannerid");
	query.setParameter("bannerid", id);
	int rowCount = query.executeUpdate();
	System.out.println("delete banner complete");
	System.out.println("rowcount "+rowCount);
	t.commit();
	session.close();
	
	
		
	}


	@Override
	public StepBanner getsinglebanner(int id) {
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		StepBanner banner = (StepBanner)session.get(StepBanner.class, id);
		System.out.println("getsingle banner banner title  " +banner.getBanner_title());
		t.commit();
		session.close();
		return banner;
	}


	@Override
	public int getBannerdbsize() {
		int size=0;
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		Query query=session.createQuery("select count(*) from StepBanner");
		List list=query.list();
		Iterator itr=list.iterator();
		size=Integer.parseInt(itr.next().toString());
		return size;
	}
	
	
}
