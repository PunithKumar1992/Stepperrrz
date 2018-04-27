package com.appfone.stepperz.Daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.appfone.stepperz.Dao.AdminLoginDao;
import com.appfone.stepperz.util.HibernateUtil;

public class AdminLoginDaoimpl  implements AdminLoginDao{

	@Override
	public int validateAdmin(String username, String password) {
		
	SessionFactory factory=HibernateUtil.getSessionFactory();
	Session session=factory.openSession();
	Transaction t=session.beginTransaction();
	t.begin();
	Query qry=session.createQuery("from StepAdminregistration where admin_name=:name and admin_password=:pass");
	qry.setParameter("name", username);
	qry.setParameter("pass", password);
	List list=qry.list();
	int flag=0;
	if ((list != null) && (list.size() > 0)) {
		flag=1;
	}
	

	
		return flag;
	}

}
