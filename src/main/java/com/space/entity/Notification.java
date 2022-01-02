package com.space.entity;

import java.time.LocalDateTime;

public class Notification
{
	// avatar username noofpost topic_title topic_id create date
	private int topic_id;
	private String title;
	private String username;
	private String avatar;
	private int countpost;
	private String name;
	private LocalDateTime create_date;
	
	public int getTopic_id() {
		return topic_id;
	}
	public void setTopic_id(int topic_id) {
		this.topic_id = topic_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String topic_title) {
		this.title = topic_title;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public int getCountpost() {
		return countpost;
	}
	public void setCountpost(int countpost) {
		this.countpost = countpost;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public LocalDateTime getCreate_date() {
		return create_date;
	}
	public void setCreate_date(LocalDateTime create_date) {
		this.create_date = create_date;
	}
	
	@Override
	public String toString() {
		return "Notification [topic_id=" + topic_id + ", title=" + title + ", username=" + username + ", avatar="
				+ avatar + ", countpost=" + countpost + ", name=" + name + ", create_date=" + create_date + "]";
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
