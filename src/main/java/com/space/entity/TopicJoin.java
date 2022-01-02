package com.space.entity;

import java.sql.Date;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class TopicJoin 
{
	DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
	private int user_id;
	private int category_id;
	private String username;
	private String title;
	private String name;
	private LocalDateTime create_date;
	private String avatar;
	private int topic_id;
	private String body;
	private String search;
	private int count;
	private int toprep;
	
	
	
	
	
	public TopicJoin() {
		super();
	}
	
	
	
	
	
	public TopicJoin(LocalDateTime  create_date, String title, String username, String avatar, String name) {
		super();
		this.create_date = create_date;
		this.title = title;
		this.username = username;
		this.avatar = avatar;
		this.name = name;
	}




	
	

	public int getUser_id() {
		return user_id;
	}

	
	


	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}





	public int getCategory_id() {
		return category_id;
	}

	



	public int getCount() {
		return count;
	}





	public void setCount(int count) {
		this.count = count;
	}





	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}





	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public LocalDateTime   getCreate_date() {
		return create_date;
	}
	public void setCreate_date(LocalDateTime  create_date) {
		this.create_date = create_date;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar; 
	}
	


	public int getTopic_id() {
		return topic_id;
	}

	public void setTopic_id(int topic_id) {
		this.topic_id = topic_id;
	}





	public String getBody() {
		return body;
	}





	public void setBody(String body) {
		this.body = body;
	}




	public String getSearch() {
		return search;
	}





	public void setSearch(String search) {
		this.search = search;
	}


	



	public int getToprep() {
		return toprep;
	}





	public void setToprep(int toprep) {
		this.toprep = toprep;
	}





	@Override
	public String toString() {
		return "TopicJoin [myFormatObj=" + myFormatObj + ", user_id=" + user_id + ", category_id=" + category_id
				+ ", username=" + username + ", title=" + title + ", name=" + name + ", create_date=" + create_date
				+ ", avatar=" + avatar + ", topic_id=" + topic_id + ", body=" + body + ", search=" + search + ", count="
				+ count + "]";
	}


	



	
	
	





	





	


	



	





	
	
	
	
	
	

}
