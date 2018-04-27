package com.appfone.stepperz.Dao;

import java.util.List;

import com.appfone.stepperz.pojo.StepCareer;

public interface AdmincareerDao {

	
	public abstract List getCareers();
	
	public void saveCareer(StepCareer career);
	
	public abstract void deleteSingleCareer(int id);
	
	public abstract StepCareer getSingleCareer(int id);
}
