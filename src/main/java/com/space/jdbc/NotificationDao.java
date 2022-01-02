package com.space.jdbc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.space.entity.Notification;
import com.space.entity.Reply;

@Repository
public class NotificationDao
{
	
	@Autowired
	JdbcTemplate jdtemp;
	public List<Notification> findNotification(int user_id)
	{ 
		
		 
		return jdtemp.query("SELECT * FROM  \r\n" + 
				"				replies_table r INNER JOIN topic_table t ON r.topic_id = t.topic_id\r\n" + 
				"				INNER JOIN user_table u ON u.user_id = t.user_id\r\n" + 
				"                INNER JOIN categories_table c ON c.category_id = t.category_id\r\n" + 
				"				WHERE u.user_id = ? AND r.notification = 1" ,
				new Object[] {user_id} ,new BeanPropertyRowMapper<Notification>(Notification.class) );
	}
	
	public int updateNotification(int user_id)
	{ 
		
		
		return jdtemp.update("UPDATE replies_table r INNER JOIN topic_table t on r.topic_id = t.topic_id SET notification = 0 where t.user_id = ? ",
				
				new Object[] {user_id});
		 
		
	}
	

}
