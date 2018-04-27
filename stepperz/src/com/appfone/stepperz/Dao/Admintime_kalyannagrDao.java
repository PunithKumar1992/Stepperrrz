package com.appfone.stepperz.Dao;

import java.util.List;

import com.appfone.stepperz.pojo.StepTimetable_kalyannagar;
import com.appfone.stepperz.pojo.StepTimetable_sadashivnagr;


public interface Admintime_kalyannagrDao {
	
	public abstract List gettimetables();
	public void saveSadaTime(StepTimetable_kalyannagar newtime);
	public StepTimetable_kalyannagar getsingletime(int id);

}
