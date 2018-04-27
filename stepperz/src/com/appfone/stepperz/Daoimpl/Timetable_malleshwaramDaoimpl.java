package com.appfone.stepperz.Daoimpl;

import java.util.Iterator;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Projections;

import com.appfone.stepperz.Dao.Timetable_malleshwaramDao;
import com.appfone.stepperz.pojo.StepTimetable_kalyannagar;
import com.appfone.stepperz.pojo.StepTimetable_malleshwaram;
import com.appfone.stepperz.util.HibernateUtil;

public class Timetable_malleshwaramDaoimpl implements Timetable_malleshwaramDao {
	
	int size=0;
	String malleshwaram_caption[];
	String malleshwaram_image[];
	@Override
	public int getTableCount() {
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t=session.beginTransaction();
		t.begin();
		Query query=session.createQuery("select count(*) from StepTimetable_malleshwaram");
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
		Criteria criteria=session.createCriteria(StepTimetable_malleshwaram.class);
		criteria.setProjection(Projections.property("timetable_caption"));
		List list=criteria.list();
		Iterator itr=list.iterator();
		malleshwaram_caption=new String[size];
		int  i=0;
		while(itr.hasNext())
		{
			malleshwaram_caption[i]=(String) itr.next();
			i++;
			
		}
		return malleshwaram_caption;
	}

	@Override
	public String[] getTableImage() {
		
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t=session.beginTransaction();
		t.begin();
		Criteria criteria=session.createCriteria(StepTimetable_malleshwaram.class);
		criteria.setProjection(Projections.property("timetable_image"));
		List list=criteria.list();
		Iterator itr=list.iterator();
		malleshwaram_image=new String[size];
		int i=0;
		while(itr.hasNext())
		{
			malleshwaram_image[i]=itr.next().toString();
			i++;
			
		}
		
		return malleshwaram_image;
	}
	


}
