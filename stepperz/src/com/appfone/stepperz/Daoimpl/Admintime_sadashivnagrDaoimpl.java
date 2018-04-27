package com.appfone.stepperz.Daoimpl;

import java.util.Iterator;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.appfone.stepperz.Dao.Admintime_sadashivnagrDao;
import com.appfone.stepperz.pojo.StepBanner;
import com.appfone.stepperz.pojo.StepTimetable_sadashivnagr;
import com.appfone.stepperz.util.HibernateUtil;

public class Admintime_sadashivnagrDaoimpl implements Admintime_sadashivnagrDao {

	@Override
	public List gettimetables() {
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session =factory.openSession();
		Transaction t=session.beginTransaction();
		Query query=session.createQuery("from StepTimetable_sadashivnagr");
		List list=query.list();
		Iterator itr = list.iterator();
		while(itr.hasNext())
		{
			System.out.println(itr.next());
		}
		
		return list;
		
	}

	@Override
	public void saveSadaTime(StepTimetable_sadashivnagr newtime) 
	{
		
		System.out.println("sadashivnagar time table save method is invoked");
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		session.saveOrUpdate(newtime);
		t.commit();
		session.close();
		
		
	}

	@Override
	public StepTimetable_sadashivnagr getsingletime(int id) {
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		StepTimetable_sadashivnagr sadatime = (StepTimetable_sadashivnagr)session.get(StepTimetable_sadashivnagr.class, id);
		t.commit();
		session.close();
		return sadatime;
	}

}
