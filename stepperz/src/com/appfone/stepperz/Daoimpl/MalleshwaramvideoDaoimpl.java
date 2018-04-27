package com.appfone.stepperz.Daoimpl;

import java.util.Iterator;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Projections;

import com.appfone.stepperz.Dao.MalleshwaramvideoDao;
import com.appfone.stepperz.pojo.StepMalleshwaramvideo;
import com.appfone.stepperz.pojo.StepSadashivnagarvideo;
import com.appfone.stepperz.util.HibernateUtil;

public class MalleshwaramvideoDaoimpl implements MalleshwaramvideoDao {

	int size=0;
	String[] malleshwaram_videos;
	
	
	@Override
	public int getcount() {
		
		
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		Query query=session.createQuery("select count(*) from StepMalleshwaramvideo");
		List list= query.list();
		Iterator itr=list.iterator();
		size = Integer.parseInt(itr.next().toString());
		t.commit();
		session.close();
		
		return size;
	}

	@Override
	public String[] getMalleshwaramvideos() {
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t =session.beginTransaction();
		t.begin();
		Criteria criteria=session.createCriteria(StepMalleshwaramvideo.class);
		criteria.setProjection(Projections.property("video_link"));
		List list=criteria.list();
		malleshwaram_videos = new String[size];
		Iterator itr=list.iterator();
		int i=0;
		while(itr.hasNext())
		{
			malleshwaram_videos[i]=itr.next().toString();
			i++;
		}
		return malleshwaram_videos;
		
	}
	
	
	
	
	

}
