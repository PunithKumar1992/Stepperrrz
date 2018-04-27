package com.appfone.stepperz.Dao;

import java.util.List;

import com.appfone.stepperz.pojo.StepSadashivnagarimages;

public interface AdminsadashivimggalleryDao {
	
	public List getsadashivimg();
	
	public void deletesadimg(int id);
	
	public void saveadminimg(StepSadashivnagarimages sadaimg);

}
