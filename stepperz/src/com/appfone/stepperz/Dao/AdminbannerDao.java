package com.appfone.stepperz.Dao;

import java.util.List;

import com.appfone.stepperz.pojo.StepBanner;

public interface AdminbannerDao {

	public abstract List getbanners();
	public void Savebanner(StepBanner banner);
	public abstract void deletebanner(int id,String img);
	public abstract StepBanner getsinglebanner(int id);
	public int getBannerdbsize();
	
}
