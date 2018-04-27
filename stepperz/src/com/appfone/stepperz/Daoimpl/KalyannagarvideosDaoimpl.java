package com.appfone.stepperz.Daoimpl;

import java.util.Iterator;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;

import com.appfone.stepperz.Dao.KalyannagarvideosDao;
import com.appfone.stepperz.pojo.StepKalyannagarvideo;
import com.appfone.stepperz.util.HibernateUtil;

public class KalyannagarvideosDaoimpl implements  KalyannagarvideosDao {

	int size=0;
	String kalyannagar_video[];
	@Override
	public int getcount() {
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		Query query = session.createQuery("select count(*) from StepKalyannagarvideo");
		List list=query.list();
		Iterator itr=list.iterator();
		size=Integer.parseInt(itr.next().toString());
		t.commit();
		session.close();
		return size;
	}

	@Override
	public String[] getKalyannagarvideos() {
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		
		Criteria criteria=session.createCriteria(StepKalyannagarvideo.class);
		criteria.setProjection(Projections.property("video_link"));
		List list= criteria.list();
		
		kalyannagar_video = new String[size];
		Iterator itr=list.iterator();
		int i=0;
		while(itr.hasNext())
		{
			kalyannagar_video[i]=itr.next().toString();
			i++;
		}
		
		
		return kalyannagar_video;
	}

	
	
}
