package com.appfone.stepperz.Daoimpl;

import java.util.Iterator;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Projections;

import com.appfone.stepperz.Dao.SadashivnagarimagesDao;
import com.appfone.stepperz.pojo.StepKalyannagarimages;
import com.appfone.stepperz.pojo.StepSadashivnagarimages;
import com.appfone.stepperz.util.HibernateUtil;

public class SadashivnagarimagesDaoimpl implements SadashivnagarimagesDao{

	
	int size=0;
	String[] sadashiv_images;
	@Override
	public int getcount() {
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		Query query = session.createQuery("select count(*) from StepSadashivnagarimages");
		List list = query.list();
		Iterator itr = list.iterator();
		size = Integer.parseInt(itr.next().toString());
		t.commit();
		session.close();
		return size;
		
		
	
	}

	@Override
	public String[] getSadashivnagarimages() {
		sadashiv_images = new String[size];
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session =factory.openSession();
		Transaction t =session.beginTransaction();
		Criteria criteria= session.createCriteria(StepSadashivnagarimages.class);
		criteria.setProjection(Projections.property("image_name"));
		List list= criteria.list();
		Iterator itr = list.iterator();
		int i=0;
		while(itr.hasNext())
		{
			sadashiv_images[i]=itr.next().toString();
			i++;
		}
		
		return sadashiv_images;
	}

	
	public static void main(String[] args) {
		
		SadashivnagarimagesDaoimpl sadashiv_img=new SadashivnagarimagesDaoimpl();
		int size =sadashiv_img.getcount();
		System.out.println(size);
		String sadashiv_images[]=new String[size];
		sadashiv_images=sadashiv_img.getSadashivnagarimages();
		for(int i=0;i<size;i++)
		{
			System.out.println(sadashiv_images[i]);
		}
		
		
	}
}
