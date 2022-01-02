package com.space.entity;

import java.time.LocalDateTime;

import org.springframework.jdbc.core.BeanPropertyRowMapper;

public class Reply
{
	private int rep_id;
	private int rep_user_id;
	private int topic_id;
	private String body;
	private LocalDateTime create_date;
	private String username;
	private String avatar;
	private int vote;
	private String title;
	private String topicbody;
	
	

	public Reply() {
		super();
	}

	public Reply(int rep_user_id, int topic_id, String body) {
		super();
		this.rep_id = rep_user_id;
		this.topic_id = topic_id;
		this.body = body;
	}
	
	
	
	

	public int getRep_user_id() {
		return rep_user_id;
	}

	public void setRep_user_id(int rep_user_id) {
		this.rep_user_id = rep_user_id;
	}

	public Reply(String body) {
		super();
		this.body = body;
	}
	
	public Reply(int rep_id) {
		super();
		this.rep_id = rep_id;
	}

	public int getRep_id() {
		return rep_id;
	}

	public void setRepid(int rep_user_id) {
		this.rep_id = rep_user_id;
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

	public LocalDateTime getCreate_date() {
		return create_date;
	}

	public void setCreate_date(LocalDateTime create_date) {
		this.create_date = create_date;
	}
	
	
	

	public String getTopicbody() {
		return topicbody;
	}

	public void setTopicbody(String topicbody) {
		this.topicbody = topicbody;
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

	public int getVote() {
		return vote;
	}

	public void setVote(int vote) {
		this.vote = vote;
	}

	public void setRep_id(int rep_id) {
		this.rep_id = rep_id;
	}
	
	

	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Override
	public String toString() {
		return "Reply [rep_id=" + rep_id + ", topic_id=" + topic_id + ", body=" + body + ", create_date=" + create_date
				+ ", username=" + username + ", avatar=" + avatar + ", vote=" + vote + ", title=" + title
				+ ", topicbody=" + topicbody + "]";
	}

	
	

	

	
	
	
	
	
	
	

}
