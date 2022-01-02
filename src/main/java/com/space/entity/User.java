package com.space.entity;

import java.sql.Date;

public class User 
{
	private int user_id;
	private String name;
	private String username;
	private String password;
	private String email;
	private String avatar;
	private String about;
	private Date last_activity;
	private Date join_date;
	
	public User()
	{ 		 
		
	}  
	
	
	
	

	




	/*
	 * public User(String username, String password) { super(); this.username =
	 * username; this.password = password; }
	 */



	public User(String name, String username, String password, String email, String avatar, String about) {
		super();
		this.name = name;
		this.username = username;
		this.password = password;
		this.email = email;
		this.avatar = avatar;
		this.about = about;
	}



	public User(String password, String about) {
		super();
		this.password = password;
		this.about = about;
	}


	public int getUser_id() {
		return user_id;
	}




	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}




	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getAbout() {
		return about;
	}

	public void setAbout(String about) {
		this.about = about;
	}

	public Date getLast_activity() {
		return last_activity;
	}

	public void setLast_activity(Date last_activity) {
		this.last_activity = last_activity;
	}

	public Date getJoin_date() {
		return join_date;
	}

	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}
	

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}




	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", name=" + name + ", username=" + username + ", password=" + password
				+ ", email=" + email + ", avatar=" + avatar + ", about=" + about + ", last_activity=" + last_activity
				+ ", join_date=" + join_date + "]";
	}

	
	
	
	
}
