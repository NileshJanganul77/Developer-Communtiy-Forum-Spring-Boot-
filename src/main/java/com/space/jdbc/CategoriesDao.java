package com.space.jdbc;

import java.util.List;

import javax.activation.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.space.entity.Categories;
import com.space.entity.Topic;



@Repository
public class CategoriesDao
{
	@Autowired
	JdbcTemplate jdtemp; 
	
	private DataSource dataSource;
	//first we will inseet  admin will insert we have inserted staticly so we are now going to display to user     ok
	
	public int insert(Categories category)
	{
		return jdtemp.update("insert into categories_table(name,description) values(?,?)",
				new Object[] {category.getName(),category.getDescription()});
	}
	

	public List<Categories> findAll()
	{ 
		  
		 
		return jdtemp.query("select * from Categories_Table", new BeanPropertyRowMapper<Categories>(Categories.class) );
		
		
	}
	
	public int findCountTopic()
	{ 
		
		String sql = "SELECT COUNT(*) as category_id from topic_table WHERE status = 1 ";
		int count = jdtemp.queryForObject(sql, Integer.class);
		
		return count;
		//After ths? //Deprecated
		//wait 2 min
	}
	
	
	public int findCountCategory()
	{ 
		
		String sql = "SELECT COUNT(*) as category_id from categories_table";
		int count = jdtemp.queryForObject(sql, Integer.class);
		
		return count;
		//After ths? //Deprecated
		//wait 2 min
	}
	
	public List<Categories> findCateTop()
	{ 
		 
		return jdtemp.query("select count(t.category_id) as topcate_id ,c.name,c.category_id\r\n" + 
				"			from categories_table c INNER JOIN topic_table t\r\n" + 
				"				on c.category_id = t.category_id WHERE t.status = 1 \r\n" + 
				"				GROUP BY t.category_id" , new BeanPropertyRowMapper<Categories>(Categories.class) );
		//After ths?
		
	} 
	
	
	

}
