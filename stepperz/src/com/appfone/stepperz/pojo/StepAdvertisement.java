package com.appfone.stepperz.pojo;

import org.springframework.web.multipart.MultipartFile;

public class StepAdvertisement {

	private int ads_id;
	private String ads_type;
	private String ads_images;
	
	private MultipartFile adsfile;
	
	public int getAds_id() {
		return ads_id;
	}
	public void setAds_id(int ads_id) {
		this.ads_id = ads_id;
	}
	public String getAds_type() {
		return ads_type;
	}
	public void setAds_type(String ads_type) {
		this.ads_type = ads_type;
	}
	public String getAds_images() {
		return ads_images;
	}
	public void setAds_images(String ads_images) {
		this.ads_images = ads_images;
	}
	public MultipartFile getAdsfile() {
		return adsfile;
	}
	public void setAdsfile(MultipartFile adsfile) {
		this.adsfile = adsfile;
	}
	@Override
	public String toString() {
		return "Advertisement [ads_id=" + ads_id + ", ads_type=" + ads_type + ", ads_images=" + ads_images
				+ ", adsfile=" + adsfile + "]";
	}
	
	
	
	
	
}
