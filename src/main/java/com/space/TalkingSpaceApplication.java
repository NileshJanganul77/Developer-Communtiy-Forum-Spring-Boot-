package com.space;
 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.jasypt.util.password.rfc2307.RFC2307MD5PasswordEncryptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.support.GeneratedKeyHolder;

import com.space.entity.Categories;
import com.space.entity.Trends;
import com.space.entity.User;
import com.space.entity.Vote;
import com.space.jdbc.CategoriesDao;
import com.space.jdbc.UserDao;
import com.space.jdbc.VoteDao;
//import com.sun.xml.bind.v2.schemagen.xmlschema.List;
 
 
@SpringBootApplication(scanBasePackages={"com.space","com.Pagecontroller","com.space.entity","com.space.jdbc"})
public class TalkingSpaceApplication implements CommandLineRunner {
	
	@Autowired     
	UserDao user;  
	 
	@Autowired
	JdbcTemplate jdbcTemplate; 
	
	@Autowired        
	CategoriesDao catedao;
	
	@Autowired        
	VoteDao votedao;
	
	@Autowired
	Trends trends;
	 
     
	public static void main(String[] args) {
		SpringApplication.run(TalkingSpaceApplication.class, args);
		
		/* 
		 * RFC2307MD5PasswordEncryptor enc = new RFC2307MD5PasswordEncryptor();
		 * 
		 * String password = "Hello";
		 *  
		 * String encpass = enc.encryptPassword(password); String encpass2 =
		 * enc.encryptPassword(password);
		 * 
		 * String subenc= encpass.substring(5); String subenc2= encpass2.substring(5);
		 * 
		 * // System.out.println(encpass.substring(5));
		 * 
		 * 
		 * 
		 * boolean status = subenc.equals(subenc2); System.out.println(status);
		 * 
		 * System.out.println(subenc+" "+subenc2);
		 */
		
		//List<Categories> s =catedao.findAll();
		 
	}
    
	@Override 
	public void run(String... args) throws Exception 
	{
		//List<UserDao> myList = (java.util.List<UserDao>) user.findByName("tomcat08","123456");
		//List <User> s =user.findByName("tomcat08","123456");
			//myList = (java.util.List<User>)
		
		/* 
		 * List<User> s =user.findByName("tomcat0","123456");
		 * 
		 * if(s.isEmpty()) {
		 * 
		 * System.out.println("fail"); } System.out.println(s);
		 * 
		 *
		 */ 
		 
		
		/*
		 * GeneratedKeyHolder holder = new GeneratedKeyHolder(); jdbcTemplate.update(new
		 * PreparedStatementCreator() {
		 * 
		 * @Override public PreparedStatement createPreparedStatement(Connection con)
		 * throws SQLException { PreparedStatement statement = con.
		 * prepareStatement("insert into vote_table(reply_id,user_id,vote_click) values(3,1,1) "
		 * , Statement.RETURN_GENERATED_KEYS); return statement;
		 * 
		 * 
		 * } }, holder);
		 * 
		 * int primaryKey = holder.getKey().intValue();
		 */
		
		/*
		 * int a = 3,b=1,c=1; System.out.println("hello");
		 * System.out.println(votedao.insertVote(new Vote(a,b,c)));
		 */
		  
		  //System.out.println(catedao.findCountTopic());
		 //see this link 
		
		
//Map<String, Integer> map = trends.returnJobValues();
		
		
/*
 * for(Map.Entry pair : map.entrySet()) { System.out.println(pair.getKey() +
 * ": "+ pair.getValue()); }
 */
		
		//String array1 =  map.get("array1");
		
		
		//System.out.println(array1);
		
		
		 
		
	} 
 
}
   