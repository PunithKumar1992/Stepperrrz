package com.appfone.stepperz.pojo;

public class StepCareer {
	
	private int career_id;
	private String first_name;
	private String last_name;
	private String email;
	private String post_applyfor;
	private String salary_req;
	private String joining_date;
	private String phone;
	private String last_company;
	private String message;
	public int getCareer_id() {
		return career_id;
	}
	public void setCareer_id(int career_id) {
		this.career_id = career_id;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPost_applyfor() {
		return post_applyfor;
	}
	public void setPost_applyfor(String post_applyfor) {
		this.post_applyfor = post_applyfor;
	}
	public String getSalary_req() {
		return salary_req;
	}
	public void setSalary_req(String salary_req) {
		this.salary_req = salary_req;
	}
	public String getJoining_date() {
		return joining_date;
	}
	public void setJoining_date(String joining_date) {
		this.joining_date = joining_date;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getLast_company() {
		return last_company;
	}
	public void setLast_company(String last_company) {
		this.last_company = last_company;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	@Override
	public String toString() {
		return "Career [career_id=" + career_id + ", first_name=" + first_name + ", last_name=" + last_name + ", email="
				+ email + ", post_applyfor=" + post_applyfor + ", salary_req=" + salary_req + ", joining_date="
				+ joining_date + ", phone=" + phone + ", last_company=" + last_company + ", message=" + message + "]";
	}
	
	
	
	
	

}
