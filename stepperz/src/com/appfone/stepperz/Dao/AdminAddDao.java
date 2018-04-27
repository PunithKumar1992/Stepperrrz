package com.appfone.stepperz.Dao;

import java.util.List;

import com.appfone.stepperz.pojo.StepAdminregistration;

public interface AdminAddDao {
	
	public List getAdmins();
	public void deleteAdmin(int id);
	public StepAdminregistration getSingleadmin(int id);

}
