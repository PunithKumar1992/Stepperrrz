package com.appfone.stepperz.Daoimpl;

import java.util.Iterator;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Projections;

import com.appfone.stepperz.Dao.MalleshwaramimagesDao;
import com.appfone.stepperz.pojo.StepKalyannagarimages;
import com.appfone.stepperz.pojo.StepMalleshwaramimages;
import com.appfone.stepperz.util.HibernateUtil;

public class MalleshwaramimagesDaoimpl implements MalleshwaramimagesDao
{
	
	int size=0;
	String Malleshwaram_imagelist[];

	@Override
	public int getcount() {
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		Query query = session.createQuery("select count(*) from StepMalleshwaramimages");
		List list = query.list();
		Iterator itr = list.iterator();
		size = Integer.parseInt(itr.next().toString());
		t.commit();
		session.close();
		return size;
	}

	@Override
	public String[] getMalleshwaramimages() {
		Malleshwaram_imagelist = new String[size];
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session =factory.openSession();
		Transaction t =session.beginTransaction();
		Criteria criteria= session.createCriteria(StepMalleshwaramimages.class);
		criteria.setProjection(Projections.property("image_name"));
		List list= criteria.list();
		Iterator itr = list.iterator();
		int i=0;
		while(itr.hasNext())
		{
			Malleshwaram_imagelist[i]=itr.next().toString();
			i++;
		}
		
		return Malleshwaram_imagelist;
	}

	
	
}
