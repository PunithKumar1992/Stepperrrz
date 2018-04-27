package com.appfone.stepperz.Daoimpl;

import java.util.Iterator;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Property;
import org.hibernate.criterion.Restrictions;

import com.appfone.stepperz.Dao.RecoveryDao;
import com.appfone.stepperz.pojo.StepAdminregistration;
import com.appfone.stepperz.util.HibernateUtil;

public class RecoveryDaoimpl implements RecoveryDao {

	@Override
	public int checkMailidtosend(String email) {
		
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		int flag=0;
		Query query =session.createQuery("select admin_name,admin_password from StepAdminregistration where admin_email=:mail");
		query.setParameter("mail", email);
		List list = query.list();
		if(list!=null && list.size()>0)
		{
			flag=1;
			return flag;
		}
		
		
		return flag;
	}

	@Override
	public String getusername(String email) {
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session =factory.openSession();
		Transaction t =session.beginTransaction();
		t.begin();
		String result = (String)session.createCriteria(StepAdminregistration.class)
			    .add(Restrictions.eq("admin_email",email))
			    .setProjection(Property.forName("admin_name"))
			    .uniqueResult();
		return result;
	}

	
	
	
	
	

	@Override
	public String getpassword(String email) {
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session =factory.openSession();
		Transaction t =session.beginTransaction();
		t.begin();
		String result = (String)session.createCriteria(StepAdminregistration.class)
			    .add(Restrictions.eq("admin_email",email))
			    .setProjection(Property.forName("admin_password"))
			    .uniqueResult();
		return result;
		
	}
	
	

   
}
