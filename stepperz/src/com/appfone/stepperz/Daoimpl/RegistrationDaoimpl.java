package com.appfone.stepperz.Daoimpl;

import org.apache.commons.vfs.provider.sftp.SftpClientFactory;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.appfone.stepperz.Dao.RegistrationDao;
import com.appfone.stepperz.pojo.StepRegistration;
import com.appfone.stepperz.util.HibernateUtil;

public class RegistrationDaoimpl implements RegistrationDao{

	@Override
	public void saveRegistration(StepRegistration registration) {
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session=factory.openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		session.save(registration);
		t.commit();
		session.close();
	}

}
