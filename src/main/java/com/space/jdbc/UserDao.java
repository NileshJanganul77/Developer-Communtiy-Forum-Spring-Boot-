package com.space.jdbc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import com.space.entity.User;


 
@Repository
public class UserDao
{
	@Autowired
	JdbcTemplate jdtemp; 
	 
	public int insert(User user)
	{
		return jdtemp.update("insert into user_Table(name,username,password,email,avatar,about) values (?,?,?,?,?,?)",
				new Object[] {user.getName(),user.getUsername(),user.getPassword(),user.getEmail(),user.getAvatar(),user.getAbout()});
	}
	
	
	public List<User> findByName(String username, String password)
	{ 
			return jdtemp.query("select * from User_Table where username =? and password = ?", new Object[] {username , password}, new BeanPropertyRowMapper<User>(User.class) );
	}
	

	
	public List<User> findByUserId(int user_id)
	{ 
		 
		return jdtemp.query("select * from User_Table where user_id =?", new Object[] {user_id}, new BeanPropertyRowMapper<User>(User.class) );
	}
	
	public int updatePassword(User user,int user_id)
	{
		return jdtemp.update("UPDATE user_table SET password = ? WHERE user_id = ? ", 
				new Object[] {user.getPassword(),user_id});
	}
	
	public int updateAbout(User user,int user_id)
	{
		return jdtemp.update("UPDATE user_table SET about = ? WHERE user_id = ? ", 
				new Object[] {user.getAbout(),user_id});
	}
	public int update(User user,int user_id)
	{
		return jdtemp.update("UPDATE user_table SET password = ? , about = ? WHERE user_id = ? ", 
				new Object[] {user.getPassword(),user.getAbout(),user_id});
	}
	
	
	
	
}
