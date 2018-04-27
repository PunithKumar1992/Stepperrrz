package com.appfone.stepperz.pojo;

import org.springframework.web.multipart.MultipartFile;

public class StepSadashivnagarimages {
	
	private int image_id;
	private String image_name;
	private MultipartFile adminsadafile;
	
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
	public MultipartFile getAdminsadafile() {
		return adminsadafile;
	}
	public void setAdminsadafile(MultipartFile adminsadafile) {
		this.adminsadafile = adminsadafile;
	}
	
	
	

}
