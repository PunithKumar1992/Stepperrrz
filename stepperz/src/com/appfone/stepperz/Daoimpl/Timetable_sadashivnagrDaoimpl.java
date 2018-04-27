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

import com.appfone.stepperz.Dao.Timetable_sadashivnagrDao;
import com.appfone.stepperz.pojo.StepTimetable_sadashivnagr;
import com.appfone.stepperz.util.HibernateUtil;

public class Timetable_sadashivnagrDaoimpl implements Timetable_sadashivnagrDao {

	int size=0;
	String sada_caption[];
	String sada_image[];
	@Override
	public int getTableCount() {
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t=session.beginTransaction();
		t.begin();
		Query query=session.createQuery("select count(*) from StepTimetable_sadashivnagr");
		List list=query.list();
		Iterator itr=list.iterator();
		size=Integer.parseInt(itr.next().toString());
		t.commit();
		session.close();
		return size;
	}
	
	@Override
	public String[] getTableCaption() {
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t=session.beginTransaction();
		t.begin();
		Criteria criteria=session.createCriteria(StepTimetable_sadashivnagr.class);
		criteria.setProjection(Projections.property("timetable_caption"));
		List list=criteria.list();
		Iterator itr=list.iterator();
		sada_caption=new String[size];
		int  i=0;
		while(itr.hasNext())
		{
			sada_caption[i]=(String) itr.next();
			i++;
			
		}
		return sada_caption;
	}

	@Override
	public String[] getTableImage() {
		
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t=session.beginTransaction();
		t.begin();
		Criteria criteria=session.createCriteria(StepTimetable_sadashivnagr.class);
		criteria.setProjection(Projections.property("timetable_image"));
		List list=criteria.list();
		Iterator itr=list.iterator();
		sada_image=new String[size];
		int i=0;
		while(itr.hasNext())
		{
			sada_image[i]=itr.next().toString();
			i++;
			
		}
		
		return sada_image;
	}
	

	
}
