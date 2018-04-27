package com.appfone.stepperz.Dao;

import java.util.List;

import com.appfone.stepperz.pojo.StepKalyannagarvideo;
import com.appfone.stepperz.pojo.StepSadashivnagarvideo;

public interface AdminSadashivvideogalleryDao {
	
	public List getSadavideos();
	public void deletevideo(int id);
	public void savevideo(StepSadashivnagarvideo sadavideo);
	

}
