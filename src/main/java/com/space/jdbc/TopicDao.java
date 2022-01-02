    package com.space.jdbc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.space.entity.Categories;
import com.space.entity.Topic;
import com.space.entity.TopicJoin;
import com.space.entity.User;

@Repository
public class TopicDao 
{
	@Autowired
	JdbcTemplate jdtemp;
	
	public int insert(Topic topic)
	{
		return jdtemp.update("insert into topic_Table(category_id,user_id,title,body) values(?,?,?,?)",
				new Object[] {topic.getCategory_id(),topic.getUser_id(),topic.getTitle(),topic.getBody()});
	}	
	
	
	public List<TopicJoin> findAllTopic(int limit)
	{ 
		 
		return jdtemp.query("select t.topic_id,t.create_date,t.title,u.user_id, u.username,u.avatar,c.category_id,c.name from \r\n" + 
				"                                topic_table t inner join user_table u\r\n" + 
				"                                on t.user_id =u.user_id \r\n" + 
				"                                inner join categories_table c\r\n" + 
				"                                on t.category_id = c.category_id  WHERE t.status = 1 order by create_date ASC Limit ?,5 "
					,new Object[] {limit} , new BeanPropertyRowMapper<TopicJoin>(TopicJoin.class) );
	}
	
	
	public List<TopicJoin> findAllTopics()
	{ 
		 
		return jdtemp.query("select t.topic_id,t.create_date,t.title,u.user_id, u.username,u.avatar,c.category_id,c.name from \r\n" + 
				"                                topic_table t inner join user_table u\r\n" + 
				"                                on t.user_id =u.user_id \r\n" + 
				"                                inner join categories_table c\r\n" + 
				"                                on t.category_id = c.category_id  WHERE t.status = 1 order by create_date ASC  "
					, new BeanPropertyRowMapper<TopicJoin>(TopicJoin.class) );
	}
	
	public List<TopicJoin> findTopic(int id)
	{ 
		 
		return jdtemp.query("select t.topic_id,t.user_id,t.create_date,t.title,t.body, u.username,u.avatar,c.name from \r\n" + 
				"                                topic_table t inner join user_table u\r\n" + 
				"                                on t.user_id =u.user_id \r\n" + 
				"                                inner join categories_table c\r\n" + 
				"                                on t.category_id = c.category_id "
				+ "where t.topic_id=?  AND t.status = 1",new Object[] {id} ,new BeanPropertyRowMapper<TopicJoin>(TopicJoin.class) );
	}
	
	public int findCountTopic(int id)
	{ 
		
		String sql = "SELECT COUNT(*) FROM topic_table where user_id= (SELECT user_id from topic_table WHERE topic_id = ? AND status = 1  ) ";
		int count = jdtemp.queryForObject(sql,new Object[] {id} ,Integer.class);
		
		return count;
		
	}
	
	public List<TopicJoin> TopicCategory(int category_id)
	{
		return jdtemp.query("select t.*, u.username,u.avatar,c.name from \r\n" + 
				"				                              topic_table t inner join user_table u \r\n" + 
				"				                               on t.user_id = u.user_id\r\n" + 
				"			                               inner join categories_table c \r\n" + 
				"				                               on t.category_id = c.category_id\r\n" + 
				"				                                where t.category_id = ? AND t.status = 1 ",
				new Object[] {category_id},new BeanPropertyRowMapper<TopicJoin>(TopicJoin.class));
	}
	
	public List<TopicJoin> TopicUser(int user_id)
	{
		return jdtemp.query("select t.*, u.username,u.avatar,c.name from \r\n" + 
				"				                              topic_table t inner join user_table u \r\n" + 
				"				                               on t.user_id = u.user_id\r\n" + 
				"			                               inner join categories_table c \r\n" + 
				"				                               on t.category_id = c.category_id\r\n" + 
				"				                                where u.user_id = ? AND t.status = 1",
				new Object[] {user_id},new BeanPropertyRowMapper<TopicJoin>(TopicJoin.class));
	}
	
	
	public int updateTopic(Topic topic,int topicid)
	{
		return jdtemp.update("update topic_table set title = ? , body = ? where topic_id = ? AND status = 1 ",
				new Object[] {topic.getTitle(),topic.getBody(),topicid});
	}	
	
	public int deleteTopic(int topicid)
	{
		return jdtemp.update("UPDATE topic_table SET status = 0 WHERE topic_id = ?  ",
				new Object[] {topicid});
	}
	
	public List<TopicJoin> topRep()
	{
		return jdtemp.query("SELECT COUNT(topic_id) AS toprep from topic_table where user_id IN(select rep_user_id FROM replies_table)GROUP BY user_id", new BeanPropertyRowMapper<TopicJoin>(TopicJoin.class));
	}
	
	
	public List<TopicJoin> SearchTopic(String search)
	{ 
		System.out.println(search+"is "); 
		
		String sear = "'%"+search+"%'";
		
		
		return jdtemp.query("select t.topic_id,t.create_date,t.title,t.body, u.username,u.avatar,c.name from\r\n" + 
				"				                                topic_table t inner join user_table u \r\n" + 
				"				                                on t.user_id =u.user_id\r\n" + 
				"				                                inner join categories_table c\r\n" + 
				"				                                on t.category_id = c.category_id \r\n" + 
				"				 								where t.title LIKE "+sear+"  AND t.status = 1",
				
				new BeanPropertyRowMapper<TopicJoin>(TopicJoin.class) );
	}
	
	
	
	
	
	
	
	
	  public List<TopicJoin> CountReply() {
	  
	  return jdtemp.
	  query("select t.topic_id,t.create_date,t.title,u.user_id, COUNT(r.rep_id) as count, u.username,u.avatar,c.category_id,c.name ,"
	  		+ "r.rep_id from topic_table t inner join user_table u on t.user_id =u.user_id inner join categories_table c "
	  		+ "on t.category_id = c.category_id INNER JOIN replies_table r ON r.topic_id = t.topic_id where r.status = 1"
	  		+ " group by t.topic_id ", new BeanPropertyRowMapper<TopicJoin>(TopicJoin.class) ); }
	  
	 
	
	
	
	
}

//whatsup niilesh?