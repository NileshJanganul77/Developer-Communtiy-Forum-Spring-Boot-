package com.space.jdbc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.space.entity.Reply;
import com.space.entity.Topic;
import com.space.entity.TopicJoin;
import com.space.entity.Vote;

@Repository
public class ReplyDao 
{
	
	@Autowired
	JdbcTemplate jdtemp;
	
	public int insert(Reply reply)
	{
		return jdtemp.update("insert into replies_table(rep_user_id,topic_id,body) values(?,?,?)",
				new Object[] {reply.getRep_id(),reply.getTopic_id(),reply.getBody()});
	}
	
	
	/*
	 * SELECT u.username , u.avatar , r.body , r.create_date , r.vote FROM
	 user_table u INNER JOIN replies_table r ON r.rep_user_id =u.user_id WHERE
	  r.topic_id = 2
	 */
	
	public List<Reply> findTopic(int id)
	{ 
		
		 
		return jdtemp.query("SELECT r.rep_id,r.rep_user_id , u.username , u.avatar , r.body , r.create_date , r.vote\r\n" + 
				"FROM user_table u INNER JOIN replies_table r \r\n" + 
				"ON r.rep_user_id =u.user_id WHERE r.topic_id = ? AND r.status = 1 ORDER BY create_date DESC ",new Object[] {id} ,new BeanPropertyRowMapper<Reply>(Reply.class) );
	}
	
	public List<Reply> findAllReply(int id)
	{ 
		
		 
		return jdtemp.query("Select * from replies_table where rep_id = ? AND status = 1 ",new Object[] {id} ,new BeanPropertyRowMapper<Reply>(Reply.class) );
	}
	
	
	public List<Reply> ReplyUser(int user_id)
	{
		return jdtemp.query("SELECT u.username, r.rep_id, r.body,r.create_date, t.title from replies_table r INNER JOIN topic_table t\r\n" + 
				"ON r.topic_id = t.topic_id\r\n" + 
				"INNER JOIN user_table u\r\n" + 
				"ON r.rep_user_id = u.user_id\r\n" + 
				"WHERE r.rep_user_id = ? AND r.status = 1",
				new Object[] {user_id},new BeanPropertyRowMapper<Reply>(Reply.class));
	}
	

	public List<Reply> findReply(int repid)
	{ 
		
		 
		return jdtemp.query("SELECT t.title,t.body AS topicbody,r.rep_id,r.body,r.create_date FROM replies_table r\r\n" + 
				"INNER JOIN topic_table t ON r.topic_id =t.topic_id\r\n" + 
				"WHERE r.status = 1 AND r.rep_id = ?",new Object[] {repid} ,new BeanPropertyRowMapper<Reply>(Reply.class) );
	}
	
	public int updateReply(Reply reply,int replyid)
	{
		return jdtemp.update("UPDATE replies_table SET body = ? WHERE rep_id = ? ",
				new Object[] {reply.getBody(),replyid});
	}
	
	public int deleteReply(int replyid)
	{
		return jdtemp.update("UPDATE replies_table SET status = 0 WHERE rep_id  = ?  ",
				new Object[] {replyid});
	}
	
	public List<Reply> CountVote()
	{ 
		
		 
		return jdtemp.query(
				"SELECT u.username , SUM(r.vote) AS vote  FROM replies_table r INNER JOIN topic_table t\r\n" + 
				"ON t.topic_id = r.topic_id INNER JOIN user_table u\r\n" + 
				"ON t.user_id = u.user_id\r\n" + 
				"GROUP by u.user_id",new BeanPropertyRowMapper<Reply>(Reply.class) );
	}
	
	public List<Reply> totalposts()
	{ 
		
		 
		return jdtemp.query(
				"SELECT COUNT(topic_id) AS  topic_id, user_id AS rep_id FROM topic_table GROUP BY user_id",new BeanPropertyRowMapper<Reply>(Reply.class) );
	}
	
		
	
}
