package com.space.entity;

public class Vote
{
	private int vote_id;
	private int reply_id;
	private int user_id;
	private int vote_click;
	
	
	
	public Vote() {
		super();
	}

	public Vote(int reply_id, int user_id, int vote_click) {
		super();
		this.reply_id = reply_id;
		this.user_id = user_id;
		this.vote_click = vote_click;
	}
	
	public int getVote_id() {
		return vote_id;
	}
	public void setVote_id(int vote_id) {
		this.vote_id = vote_id;
	}
	public int getReply_id() {
		return reply_id;
	}
	public void setReply_id(int reply_id) {
		this.reply_id = reply_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int isVote_click() {
		return vote_click;
	}
	public void setVote_click(int vote_click) {
		this.vote_click = vote_click;
	}

	@Override
	public String toString() {
		return "Vote [vote_id=" + vote_id + ", reply_id=" + reply_id + ", user_id=" + user_id + ", vote_click="
				+ vote_click + "]";
	}
	
	
	
	

}
