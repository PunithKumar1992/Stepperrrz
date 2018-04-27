package com.appfone.stepperz.pojo;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

public class StepAdminregistration {
	private int admin_id;
	
	@NotNull(message="Name is requried")
	/*@Pattern(regexp="[a-zA-Z0-9]*")*/
	private String admin_name;
	
	@NotNull(message="Email is requried")
	/*@Pattern(regexp="/^[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,4}$/",message="please enter the correct mail id ")*/
	private String admin_email;
	
	
	@NotNull(message="Phone Number is requried")
	/*@Pattern(regexp="/(7|8|9)\\d{9}/",message="Please enter correct phone number")*/
	private String admin_phone;
	
	@NotNull(message="Password is requried")
	/*@Pattern(regexp="[a-zA-Z0-9]*")*/
	private String admin_password;
	public int getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(int admin_id) {
		this.admin_id = admin_id;
	}
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	public String getAdmin_email() {
		return admin_email;
	}
	public void setAdmin_email(String admin_email) {
		this.admin_email = admin_email;
	}
	public String getAdmin_phone() {
		return admin_phone;
	}
	public void setAdmin_phone(String admin_phone) {
		this.admin_phone = admin_phone;
	}
	public String getAdmin_password() {
		return admin_password;
	}
	public void setAdmin_password(String admin_password) {
		this.admin_password = admin_password;
	}
	@Override
	public String toString() {
		return admin_name +admin_password +"";
	}
	
	
	

}
