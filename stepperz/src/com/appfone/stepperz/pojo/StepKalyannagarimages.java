package com.appfone.stepperz.pojo;

import org.springframework.web.multipart.MultipartFile;

public class StepKalyannagarimages
{
	
	private int image_id;
	private String image_name;
	private MultipartFile adminkalafile;
	
	public int getImage_id() {
		return image_id;
	}
	public void setImage_id(int image_id) {
		this.image_id = image_id;
	}
	public String getImage_name() {
		return image_name;
	}
	public void setImage_name(String image_name) {
		this.image_name = image_name;
	}
	public MultipartFile getAdminkalafile() {
		return adminkalafile;
	}
	public void setAdminkalafile(MultipartFile adminkalafile) {
		this.adminkalafile = adminkalafile;
	}
	
	
	

}
