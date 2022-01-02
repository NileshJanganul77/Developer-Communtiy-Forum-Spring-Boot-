package com.space.entity;

import java.sql.Date;

public class Topic 
{
	private int topic_id;
	private int category_id;
	private int user_id;
	private String title;
	private String body;
	private Date last_activity;
	private Date create_date;
	
	
	public Topic()
	{
		
	}
	
	
	
	
	
	public Topic(String title, String body) {
		super();
		this.title = title;
		this.body = body;
	}





	public Topic(int category_id, int user_id, String title, String body) {
		super();
		this.category_id = category_id;
		this.user_id = user_id;
		this.title = title;
		this.body = body;
	}





	public Topic(int topic_id, int category_id, int user_id, String title, String body) {
		super();
		this.topic_id = topic_id;
		this.category_id = category_id;
		this.user_id = user_id;
		this.title = title;
		this.body = body;
	}
	
	public int getTopic_id() {
		return topic_id;
	}
	public void setTopic_id(int topic_id) {
		this.topic_id = topic_id;
	}
	public int getCategory_id() {
		return category_id;
	}
	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	public Date getLast_activity() {
		return last_activity;
	} 
	public void setLast_activity(Date last_activity) {
		this.last_activity = last_activity;
	}
	public Date getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}
	
	@Override
	public String toString() {
		return "Topic [topic_id=" + topic_id + ", category_id=" + category_id + ", user_id=" + user_id + ", title="
				+ title + ", body=" + body + ", last_activity=" + last_activity + ", create_date=" + create_date + "]";
	}

	
	

}
