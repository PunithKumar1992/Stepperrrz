package com.appfone.stepperz.Dao;

import java.util.List;

import com.appfone.stepperz.pojo.StepAdvertisement;

public interface AdminadsDao {
	public abstract List getads();
	public abstract void saveads(StepAdvertisement ads);
	public abstract void deletead(int id);
}
