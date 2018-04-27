package com.appfone.stepperz.Dao;

import java.util.List;

import com.appfone.stepperz.pojo.StepKalyannagarvideo;
import com.appfone.stepperz.pojo.StepMalleshwaramvideo;

public interface AdminMalleshvideogalleryDao {
	
	public List getMalleshvideos();
	public void deletevideo(int id);
	public void savevideo(StepMalleshwaramvideo malavideo);

}
