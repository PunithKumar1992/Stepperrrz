package com.appfone.stepperz.Dao;

import java.util.List;

import com.appfone.stepperz.pojo.StepTimetable_malleshwaram;
public interface Admintime_malleshwaramDao {
	
	public abstract List gettimetables();
	public void saveMalleshTime(StepTimetable_malleshwaram newtime);
	public StepTimetable_malleshwaram getsingletime(int id);

}
