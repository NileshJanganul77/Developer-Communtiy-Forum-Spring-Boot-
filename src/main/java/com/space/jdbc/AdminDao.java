package com.space.jdbc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.jdbc.core.BeanPropertyRowMapper;

import com.space.entity.Admin;
import com.space.entity.User;

@Repository
public class AdminDao 
{
	@Autowired
	JdbcTemplate jdtemp; 
	
	public List<Admin> findByName(String username, String password)
	{ 
			return jdtemp.query("select * from admin_table where username =? and password = ?", new Object[] {username , password}, new BeanPropertyRowMapper<Admin>(Admin.class) );
	}
	
	
	

}
