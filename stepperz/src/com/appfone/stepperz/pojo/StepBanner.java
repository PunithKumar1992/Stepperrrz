package com.appfone.stepperz.pojo;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class StepBanner {
	private int banner_id;
	private String banner_title;
	private String banner_desc;
	private String banner_img;
	private MultipartFile file;
	public int getBanner_id() {
		return banner_id;
	}
	public void setBanner_id(int banner_id) {
		this.banner_id = banner_id;
	}
	public String getBanner_title() {
		return banner_title;
	}
	public void setBanner_title(String banner_title) {
		this.banner_title = banner_title;
	}
	public String getBanner_desc() {
		return banner_desc;
	}
	public void setBanner_desc(String banner_desc) {
		this.banner_desc = banner_desc;
	}
	public String getBanner_img() {
		return banner_img;
	}
	public void setBanner_img(String banner_img) {
		this.banner_img = banner_img;
	}
	
	
	
	
	
	
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	@Override
	public String toString() {
		return "Banner [banner_id=" + banner_id + ", banner_title=" + banner_title + ", banner_desc=" + banner_desc
				+ ", banner_img=" + banner_img + "]";
	}
	
	
	
	
	

}
