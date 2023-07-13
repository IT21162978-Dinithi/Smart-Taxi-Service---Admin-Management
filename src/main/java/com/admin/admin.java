package com.admin;

public class admin {
	private int id;
	private String name;
	private String email;
	private String wemail;
	private String phone;
	private String wHrs;
	private String userName;
	private String password;
	
	public admin(int id, String name, String email, String wemail, String phone, String wHrs, String userName,
			String password) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.wemail = wemail;
		this.phone = phone;
		this.wHrs = wHrs;
		this.userName = userName;
		this.password = password;
	}
	
	public int getId() {
		return id;
	}
	
	public String getName() {
		return name;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getWemail() {
		return wemail;
	}
	
	public String getPhone() {
		return phone;
	}

	public String getwHrs() {
		return wHrs;
	}
	
	public String getUserName() {
		return userName;
	}
	
	public String getPassword() {
		return password;
	}
	
	
	
}
	
