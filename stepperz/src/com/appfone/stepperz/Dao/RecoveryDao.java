package com.appfone.stepperz.Dao;

import java.util.List;

public interface RecoveryDao {

	public int checkMailidtosend(String email);
	public String getusername(String email);
	public String getpassword(String email);
	
}
