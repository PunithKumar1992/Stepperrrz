package com.appfone.stepperz.Dao;

import java.util.List;

import com.appfone.stepperz.pojo.StepKalyannagarimages;
import com.appfone.stepperz.pojo.StepMalleshwaramimages;

public interface AdminMalleshwaramimggalleryDao {
	
	public List getmalanimg();

	public void deletemalaimg(int id);
	
	public void saveadminimg(StepMalleshwaramimages malaimg);

}
