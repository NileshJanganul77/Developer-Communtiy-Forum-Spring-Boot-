package com.Pagecontroller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.space.entity.Categories;
import com.space.entity.Notification;
import com.space.entity.Reply;
import com.space.entity.Trends;
import com.space.jdbc.AdminDao;
import com.space.jdbc.CategoriesDao;
import com.space.jdbc.NotificationDao;
import com.space.jdbc.ReplyDao;
import com.space.jdbc.TopicDao;
import com.space.jdbc.UserDao;
import com.space.jdbc.VoteDao;

@Controller
public class Trendscontroller {
	
	@Autowired
	Trends trends;
	
	@Autowired
	UserDao userdao;

	@Autowired
	CategoriesDao catedao;
	
	@Autowired 
	TopicDao topicdao; 
	
	@Autowired
	ReplyDao repdao;
	
	@Autowired
	VoteDao votedao;
	
	@Autowired
	NotificationDao notdao;
	
	@Autowired
	AdminDao admindao;

	
	@Autowired
	ReplyDao repvote;
	
	@RequestMapping(value="/programming",method = RequestMethod.GET)
	public String trendsProgramming(HttpServletRequest request,Model model) throws IOException 
	{
		Map<String, Integer> map = trends.returnMultipleValues();
		
		model.addAttribute("trends", map);
		
		System.out.println(map);
		
		return "programming";
	}
	
	
	@RequestMapping(value="/jobs",method = RequestMethod.GET)
	public String trendJobs(HttpServletRequest request,Model model) throws IOException 
	{
		Map<String, Integer> map = trends.returnJobValues();
		
		model.addAttribute("trends", map);
		
		System.out.println(map);
		
		return "jobs";
	}
	
	@RequestMapping(value="/solver",method = RequestMethod.GET)
	public String Solver(HttpServletRequest request,Model model) throws IOException 
	{
		List<Reply> countvote = repvote.CountVote();
		model.addAttribute("vote", countvote);
		


			try
			{
				int sessionid = (int) request.getSession().getAttribute("sessionid");

				 List<Notification> notification = notdao.findNotification(sessionid); 
				 model.addAttribute("notification",notification);
				 //Footer
				 List<Categories> footer = catedao.findCateTop();
					model.addAttribute("footer",footer);
				
			}
			
			catch(Exception e)
			{

				 
				 //Footer
				 List<Categories> footer = catedao.findCateTop();
					model.addAttribute("footer",footer);
				
			}
		
		return "solver";
	}


}
