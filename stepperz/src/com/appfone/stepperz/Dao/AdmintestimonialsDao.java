package com.appfone.stepperz.Dao;

import java.util.List;

import com.appfone.stepperz.pojo.StepTestimonials;

public interface AdmintestimonialsDao {
	
	public abstract List getAllTestimonials();
	public abstract void saveTestimonial(StepTestimonials test);
	public abstract void deleteSingleTesti(int id);
	public abstract StepTestimonials getSingleTestimonial(int id);
}
