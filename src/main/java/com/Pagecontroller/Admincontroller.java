package com.Pagecontroller;

import org.springframework.stereotype.Controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.jasypt.util.password.rfc2307.RFC2307MD5PasswordEncryptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.support.NullValue;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.space.entity.Admin;
import com.space.entity.Categories;
import com.space.entity.Notification;
import com.space.entity.Reply;
import com.space.entity.Topic;
import com.space.entity.TopicJoin;
import com.space.entity.Trends;
import com.space.entity.User;
import com.space.entity.Vote;
import com.space.jdbc.AdminDao;
import com.space.jdbc.CategoriesDao;
import com.space.jdbc.NotificationDao;
import com.space.jdbc.ReplyDao;
import com.space.jdbc.TopicDao;
import com.space.jdbc.UserDao;
import com.space.jdbc.VoteDao;


@Controller
public class Admincontroller 
{
	@Autowired
	UserDao userdao;

	@Autowired
	CategoriesDao catedao;
	
	@Autowired 
	TopicDao topicdao; 
	
	@Autowired
	Trends trends;
	
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
	
	
	
	  @RequestMapping(value="/admin",method = RequestMethod.GET) 
	  public String Adminlogin(Model model,@RequestParam (value = "page", required = false, defaultValue = "0") int page) {
		  
		  int sessionid =0;
			int pages = page * 5;
			
		  
		  System.out.println("admin page is redirected");
		  
			System.out.println("yes");
			
			List<TopicJoin> countgrptop = topicdao.CountReply();
			
			System.out.println(countgrptop);
			
			model.addAttribute("countgrptop",countgrptop);
			
				try{
					
					//what is err? der? s
			
					
				
					System.out.println("Yes");
				
					model.addAttribute("pagenumber",page);
					
					List<TopicJoin> tops = topicdao.findAllTopics();
					
					System.out.println(tops.size());
					
					double tts =tops.size();
					
					int tpage =  (int)(Math.ceil(tts / 5))   ;
				
				System.out.println(tpage); 
					
				
				model.addAttribute("tpage",tpage);	
				
				
					model.addAttribute("topics",tops);	
					
				List<TopicJoin> top = topicdao.findAllTopic(pages);
				
				model.addAttribute("topic",top);
				
				//count reply
				/*
				 * List <TopicJoin> count = topicdao.CountReply();
				 * model.addAttribute("count",count);
				 */	//Footer
				// List<Categories> counttop = catedao.findCountTopic();
				 model.addAttribute("counttop",catedao.findCountTopic());
				 
				 
				 
				 model.addAttribute("countcate",catedao.findCountCategory());
				 
				 //Footer
				 List<Categories> footer = catedao.findCateTop();
					model.addAttribute("footer",footer);
				 
				 //
		
					
				}
				catch (NullPointerException e) {
					// TODO: handle exception
					System.out.println("session is null");
					
					model.addAttribute("pagenumber",page);
					
					List<TopicJoin> tops = topicdao.findAllTopics();
					
					System.out.println(tops.size());
					
					double tts =tops.size();
					
					int tpage =  (int)(Math.ceil(tts / 5))   ;
				
				System.out.println(tpage); 
					
				
				model.addAttribute("tpage",tpage);	
				
				
					model.addAttribute("topics",tops);	
					
				List<TopicJoin> top = topicdao.findAllTopic(pages);
				
				model.addAttribute("topic",top);
				//Footer
					// List<Categories> counttop = catedao.findCountTopic();
					 model.addAttribute("counttop",catedao.findCountTopic());
					 
					 
					 model.addAttribute("countcate",catedao.findCountCategory());
					 
					
					List<Categories> footer = catedao.findCateTop();
					model.addAttribute("footer",footer);
					
					//No.of replies
					// List<Reply> find_replys = repdao.findTopic(id);
					 
					// model.addAttribute("find_replys",find_replys);


				}
   
		  return "adminindex"; 
		  }
	  
	  
	  @RequestMapping(value="/admintopic",method = RequestMethod.GET)
		public String Usertopic(HttpServletRequest request,Model model,@RequestParam int id) {
			
			try
			{
				
				
				//int sessionid = (int) request.getSession().getAttribute("sessionid");
				
				
				
			
				
				//Footer
						// List<Categories> counttop = catedao.findCountTopic();
						 model.addAttribute("counttop",catedao.findCountTopic());
						 
						 
						 model.addAttribute("countcate",catedao.findCountCategory());
						 
						
						List<Categories> footer = catedao.findCateTop();
						model.addAttribute("footer",footer);
				
				//
				//System.out.println(topicdao.findTopic(id));
				
				//retrieve topic acc to id
				List<TopicJoin> onetopic = topicdao.findTopic(id);
				model.addAttribute("TopicJoin",onetopic);
				//count post acc to id
				model.addAttribute("countposts",topicdao.findCountTopic(id));		
				model.addAttribute("TopicId",id);
				
				
				
				//retrieve Reply acc to id
				
				//System.out.println(id);
							 List<Reply> find_replys = repdao.findTopic(id);
							 model.addAttribute("find_replys",find_replys);
			}
			catch(Exception e)
			{
				
				
				//Footer
				// List<Categories> counttop = catedao.findCountTopic();
				 model.addAttribute("counttop",catedao.findCountTopic());
				 
				 
				 model.addAttribute("countcate",catedao.findCountCategory());
				 
				
				List<Categories> footer = catedao.findCateTop();
				model.addAttribute("footer",footer);
		
					//
					//System.out.println(topicdao.findTopic(id));
					
					//retrieve topic acc to id
					List<TopicJoin> onetopic = topicdao.findTopic(id);
					model.addAttribute("TopicJoin",onetopic);
					//count post acc to id
					model.addAttribute("countposts",topicdao.findCountTopic(id));		
					model.addAttribute("TopicId",id);
					List<Reply> find_replys = repdao.findTopic(id);
					 model.addAttribute("find_replys",find_replys);
					 
					
			}
		
			return "admintopic";
		}
	  
	  @RequestMapping(value ="/admincategory", method = RequestMethod.GET)
		public String FilTopCat(@RequestParam int category_id,ModelMap model,HttpServletRequest request)
		{
			//Filter By Category
			
			List<TopicJoin> countgrptop = topicdao.CountReply();
			
			System.out.println(countgrptop);
			
			model.addAttribute("countgrptop",countgrptop);

			//int sessionid =0;
			try
			{
				//sessionid = (int) request.getSession().getAttribute("sessionid");
				List<TopicJoin> filcat = topicdao.TopicCategory(category_id);
				model.addAttribute("topic",filcat);
				//Footer
				// List<Categories> counttop = catedao.findCountTopic();
				 model.addAttribute("counttop",catedao.findCountTopic());
				 	 
				 model.addAttribute("countcate",catedao.findCountCategory());
				 
				
			//footer
				List<Categories> footer = catedao.findCateTop();
				model.addAttribute("footer",footer);
				
				
			}
			catch(Exception e)
			{
				List<TopicJoin> filcat = topicdao.TopicCategory(category_id);
				model.addAttribute("topic",filcat);
				//Footer
				// List<Categories> counttop = catedao.findCountTopic();
				 model.addAttribute("counttop",catedao.findCountTopic());
				 
				 
				 model.addAttribute("countcate",catedao.findCountCategory());
				 
				
				List<Categories> footer = catedao.findCateTop();
				model.addAttribute("footer",footer);
				
				
			}
				

			
			
			return "adminindex";
			
		}
		
		@RequestMapping(value ="/adminuser", method = RequestMethod.GET)
		public String FilTopUser(@RequestParam int user_id,ModelMap model,HttpServletRequest request)
		{
			List<TopicJoin> countgrptop = topicdao.CountReply();
			
			System.out.println(countgrptop);
			
			model.addAttribute("countgrptop",countgrptop);

			//int sessionid =0;
			try
			{
				//sessionid = (int) request.getSession().getAttribute("sessionid");
				//Filter By Category
				List<TopicJoin> filuser = topicdao.TopicUser(user_id);
				model.addAttribute("topic",filuser);
				//Footer
				// List<Categories> counttop = catedao.findCountTopic();
				 model.addAttribute("counttop",catedao.findCountTopic());
				 
				 
				 model.addAttribute("countcate",catedao.findCountCategory());
				//notification
						
					//footer
				List<Categories> footer = catedao.findCateTop();
				model.addAttribute("footer",footer);
				
			}
			catch(Exception e)
			{
				//Filter By Category
				List<TopicJoin> filuser = topicdao.TopicUser(user_id);
				model.addAttribute("topic",filuser);
				//Footer
				// List<Categories> counttop = catedao.findCountTopic();
				 model.addAttribute("counttop",catedao.findCountTopic());
				 model.addAttribute("countcate",catedao.findCountCategory());
				List<Categories> footer = catedao.findCateTop();
				model.addAttribute("footer",footer);	
			}

			
			return "adminindex";
			
		}
		
		
		@RequestMapping(value ="/adminviewpost", method = RequestMethod.GET)
		public String ViewMyPost(HttpServletRequest request,ModelMap model)
		{
			
		List<TopicJoin> top = topicdao.findAllTopics();
		
		model.addAttribute("topic",top);
		//Footer
		// List<Categories> counttop = catedao.findCountTopic();
		 model.addAttribute("counttop",catedao.findCountTopic());
		 
		 model.addAttribute("countcate",catedao.findCountCategory());
			
		 
		 List<Categories> footer = catedao.findCateTop();
			model.addAttribute("footer",footer);

			
			return "adminviewtopics";
		}

		@RequestMapping(value ="/admindeletetopic", method = RequestMethod.GET)
		public String DeleteTopic(HttpServletRequest request,ModelMap model,@RequestParam int topic_id)
		{
			// int sessionid = (int) request.getSession().getAttribute("sessionid") ;
			
			System.out.println(topic_id);
			topicdao.deleteTopic(topic_id);
			return "redirect:adminviewpost";
		}
		
		@RequestMapping(value ="/addcategory", method = RequestMethod.GET)
		public String addCategory(HttpServletRequest request,ModelMap model)
		{
			// int sessionid = (int) request.getSession().getAttribute("sessionid") ;
			//Footer
			// List<Categories> counttop = catedao.findCountTopic();
			 model.addAttribute("counttop",catedao.findCountTopic());
			 
			 model.addAttribute("countcate",catedao.findCountCategory());
				
			 
			 List<Categories> footer = catedao.findCateTop();
				model.addAttribute("footer",footer);

			
			return "addcategory";
		}
		   
		@RequestMapping(value="/addcategory",method = RequestMethod.POST)
		public String UsercreatePost(HttpServletRequest request ,Model model,@RequestParam String catname,@RequestParam String catdesc) {
				
			//int sessionid =  (int) request.getSession().getAttribute("sessionid");
			
			catedao.insert(new Categories(catname,catdesc));
					
			             
			return "redirect:admin";                   
		}
		
		@RequestMapping(value ="/adminsearch", method = RequestMethod.GET)
		public String SearchTopic(HttpServletRequest request,ModelMap model,@RequestParam String search)
		{
			 try
			 {
				 //int sessionid = (int) request.getSession().getAttribute("sessionid") ;
					System.out.println(search);
					List<TopicJoin>  findtitle = topicdao.SearchTopic(search);
					
					System.out.println(findtitle);
					
					model.addAttribute("topic",findtitle);
					
					//Notification				
					// List<Notification> notification = notdao.findNotification(sessionid); 
					 //model.addAttribute("notification",notification);
					 //Footer
					 List<Categories> footer = catedao.findCateTop();
						model.addAttribute("footer",footer);
				
				 
			 }
			 catch(Exception e)
			 {
				 System.out.println(search);
					List<TopicJoin>  findtitle = topicdao.SearchTopic(search);
					
					System.out.println(findtitle);
					
					model.addAttribute("topic",findtitle);
					 //Footer
					 List<Categories> footer = catedao.findCateTop();
						model.addAttribute("footer",footer);
				
					
				 
			 }
			
			 return "adminindex";  
		}
		
		
		@RequestMapping(value ="/viewcategory", method = RequestMethod.GET)
		public String ViewCategory(HttpServletRequest request,ModelMap model)
		{
			// int sessionid = (int) request.getSession().getAttribute("sessionid") ;
			
			List<Categories> cat = catedao.findAll();
			model.addAttribute("category", cat);
			
			
			//Footer
			// List<Categories> counttop = catedao.findCountTopic();
			 model.addAttribute("counttop",catedao.findCountTopic());
			 
			 model.addAttribute("countcate",catedao.findCountCategory());
				
			 
			 List<Categories> footer = catedao.findCateTop();
				model.addAttribute("footer",footer);

			
			return "viewcategory";
		}
		
		@RequestMapping(value ="/adminprofile", method = RequestMethod.GET)
		public String Profile(HttpServletRequest request,ModelMap model,@RequestParam  int userid)
		{
			 int sessionid = 0;
			 System.out.println(userid);
			 List<User> user = userdao.findByUserId(userid);
			 model.addAttribute("user", user);
			
			 try{
				 //Notification				
			sessionid =  (int) request.getSession().getAttribute("sessionid") ;
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
		 	
			return "adminprofile";
		}
		
		
		@RequestMapping(value="/adprogramming",method = RequestMethod.GET)
		public String trendsProgramming(HttpServletRequest request,Model model) throws IOException 
		{
			Map<String, Integer> map = trends.returnMultipleValues();
			
			model.addAttribute("trends", map);
			
			System.out.println(map);
			
			return "adprogramming";
		}
		
		
		@RequestMapping(value="/adjobs",method = RequestMethod.GET)
		public String trendJobs(HttpServletRequest request,Model model) throws IOException 
		{
			Map<String, Integer> map = trends.returnJobValues();
			
			model.addAttribute("trends", map);
			
			System.out.println(map);
			
			return "adjobs";
		}
		
		@RequestMapping(value="/adsolver",method = RequestMethod.GET)
		public String Solver(HttpServletRequest request,Model model) throws IOException 
		{
			List<Reply> countvote = repvote.CountVote();
			model.addAttribute("vote", countvote);
			

  
					 //Footer
					 List<Categories> footer = catedao.findCateTop();
						model.addAttribute("footer",footer);
					
				
				
						
			return "adsolver";
		}

		


		


		
		
		
		

		
	  
	 
		  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	
}
	 
	

	

