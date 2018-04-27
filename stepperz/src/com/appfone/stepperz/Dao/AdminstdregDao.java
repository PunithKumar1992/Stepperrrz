package com.appfone.stepperz.Dao;

import java.util.List;

import com.appfone.stepperz.pojo.StepRegistration;

public interface AdminstdregDao {
	
	public abstract void savestdreg(StepRegistration reg);
	public abstract List getSavedreglist();
	public abstract void deletesinglestdreg(int id);

}
