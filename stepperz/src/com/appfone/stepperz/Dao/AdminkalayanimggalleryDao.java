package com.appfone.stepperz.Dao;

import java.util.List;

import com.appfone.stepperz.pojo.StepKalyannagarimages;
import com.appfone.stepperz.pojo.StepSadashivnagarimages;

public interface AdminkalayanimggalleryDao {
	public List getkalayanimg();
	
	public void deletekalaimg(int id);
	public void saveadminimg(StepKalyannagarimages kalaimg);


}
