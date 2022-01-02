package com.space.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.stereotype.Repository;

import com.space.entity.Reply;
import com.space.entity.Vote;

@Repository
public class VoteDao
{
	@Autowired
	JdbcTemplate jdtemp;
	
	GeneratedKeyHolder holder = new GeneratedKeyHolder();
	
	/*
	 * public int insert(Vote vote) { return jdtemp.
	 * update("insert into vote_table(reply_id,user_id,vote_click) values(?,?,?)",
	 * new Object[] {vote.getReply_id(),vote.getUser_id(),vote.isVote_click()}); }
	 */
	
	public List<Vote> findVote(int user_id,int reply_id)
	{ 
		
		 
		return jdtemp.query(
				"SELECT * FROM vote_table WHERE user_id = ? AND reply_id = ?",new Object[] {user_id,reply_id} ,new BeanPropertyRowMapper<Vote>(Vote.class) );
	}
	
	public int updatereplyvoteInc(int rep_id, int vote_id)
	{ 
		
		
		return jdtemp.update("UPDATE replies_table , vote_table\r\n" + 
				"	 SET replies_table.vote = replies_table.vote + 1, vote_table.vote_click = 1\r\n" + 
				"	  WHERE replies_table.rep_id =? AND vote_table.vote_id = ?",
				
				new Object[] {rep_id,vote_id});
		 
		
	}
	
	
	public int updatereplyvoteInc2(int rep_id, int vote_id)
	{ 
		
		
		return jdtemp.update("UPDATE replies_table , vote_table\r\n" + 
				"	 SET replies_table.vote = replies_table.vote + 2, vote_table.vote_click = 1\r\n" + 
				"	  WHERE replies_table.rep_id =? AND vote_table.vote_id = ?",
				
				new Object[] {rep_id,vote_id});
		 
		
	}


	//UPDATE  replies_table SET vote = vote - 1 WHERE rep_id = 1

	public int updatereplyvoteDec(int rep_id, int vote_id)
	{ 
		
		
		return jdtemp.update("UPDATE replies_table , vote_table\r\n" + 
				"	 SET replies_table.vote = replies_table.vote - 1, vote_table.vote_click = 0\r\n" + 
				"	  WHERE replies_table.rep_id =? AND vote_table.vote_id = ?",
				
				new Object[] {rep_id,vote_id});
		 		
	}
	
	public int updatereplyvoteDec2(int rep_id, int vote_id)
	{ 
		
		
		return jdtemp.update("UPDATE replies_table , vote_table\r\n" + 
				"	 SET replies_table.vote = replies_table.vote - 2, vote_table.vote_click = 0\r\n" + 
				"	  WHERE replies_table.rep_id =? AND vote_table.vote_id = ?",
				
				new Object[] {rep_id,vote_id});
		 		
	}
	
	
	
	public int deletevote(int vote_id)
	{ 
		
		
		return jdtemp.update("delete from vote_table where vote_id = ?",
				
				new Object[] {vote_id});
		 		
	}
	
	
	 
	
	public int insertVote(Vote vote)
	{
		 jdtemp.update(new PreparedStatementCreator() {
			   
			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				 PreparedStatement statement = con.prepareStatement("insert into vote_table(reply_id,user_id,vote_click) values(?,?,?) ", Statement.RETURN_GENERATED_KEYS);
				 statement.setInt(1, vote.getReply_id());
			     statement.setInt(2, vote.getUser_id());
			     statement.setInt(3, vote.isVote_click());
				 
				 return statement;

				
			}
		}, holder);
		 
		 int primaryKey = holder.getKey().intValue();
		 
		 return primaryKey;

	}
	
	

}
