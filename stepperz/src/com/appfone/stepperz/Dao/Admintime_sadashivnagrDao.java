package com.appfone.stepperz.Dao;

import java.util.List;

import com.appfone.stepperz.pojo.StepTimetable_sadashivnagr;

public interface Admintime_sadashivnagrDao {
	
	public abstract List gettimetables();
	public void saveSadaTime(StepTimetable_sadashivnagr newtime);
	public StepTimetable_sadashivnagr getsingletime(int id);

}
