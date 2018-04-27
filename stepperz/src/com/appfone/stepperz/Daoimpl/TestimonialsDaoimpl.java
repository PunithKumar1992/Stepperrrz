package com.appfone.stepperz.Daoimpl;

import java.util.Iterator;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Projections;

import com.appfone.stepperz.Dao.TestimonialsDao;
import com.appfone.stepperz.pojo.StepTestimonials;
import com.appfone.stepperz.util.HibernateUtil;

public class TestimonialsDaoimpl implements TestimonialsDao {
int size=0;
String message[];
String name[];
	@Override
	public int gettestimonialsCount() {
	SessionFactory  factory= HibernateUtil.getSessionFactory();
	Session session = factory.openSession();
	Transaction t= session.beginTransaction();
	t.begin();
	Query query= session.createQuery("select count(*) from StepTestimonials");
	List list= query.list();
	Iterator itr=list.iterator();
	size=Integer.parseInt(itr.next().toString());
	
		return size;
	}

	@Override
	public String[] getTestimonialsmsg() {
	SessionFactory factory = HibernateUtil.getSessionFactory();
	Session session=factory.openSession();
	Transaction t = session.beginTransaction();
	t.begin();
	Criteria criteria=session.createCriteria(StepTestimonials.class);
	criteria.setProjection(Projections.property("message"));
	List list = criteria.list();
	message=new String[size];
	Iterator itr=list.iterator();
	int i=0;
	while(itr.hasNext())
	{
		message[i]=itr.next().toString();
		i++;
	}
		return message;
	}

	@Override
	public String[] getTestimonialname() {
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		Criteria criteria=session.createCriteria(StepTestimonials.class);
		criteria.setProjection(Projections.property("name"));
		List list = criteria.list();
		name=new String[size];
		Iterator itr=list.iterator();
		int i=0;
		while(itr.hasNext())
		{
			name[i]=itr.next().toString();
			i++;
		}
			return name;
	}
	
	
	

}
