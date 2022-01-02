package com.Pagecontroller;

import java.util.List;

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

import com.space.entity.Categories;
import com.space.entity.Notification;
import com.space.entity.Reply;
import com.space.entity.Topic;
import com.space.entity.TopicJoin;
import com.space.entity.User;
import com.space.entity.Vote;
import com.space.entity.Admin;
import com.space.jdbc.AdminDao;
import com.space.jdbc.CategoriesDao;
import com.space.jdbc.NotificationDao;
import com.space.jdbc.ReplyDao;
import com.space.jdbc.TopicDao;
import com.space.jdbc.UserDao;
import com.space.jdbc.VoteDao;

@Controller 
public class Usercontroller { 
	
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
	
	@RequestMapping(value="/notification",method = RequestMethod.GET)
	public String notification(HttpServletRequest request,Model model) { 
		  
		System.out.println("Notification");
		
		
		
		int sessionid = (int) request.getSession().getAttribute("sessionid");		
		List<Notification> notification = notdao.findNotification(sessionid); 
		 model.addAttribute("notification",notification);
		
		System.out.println("sess");
		//
			
		return "notification"; 
		 
		
	}
	
	
	@RequestMapping(value="/notify" ,method = RequestMethod.GET)
	public String Notify(HttpServletRequest request,Model model)
	{
		int sessionid = (int) request.getSession().getAttribute("sessionid");
		
		List<Notification> notify = notdao.findNotification(sessionid); 
		
		 model.addAttribute("notify",notify);
		
		int noti = notdao.updateNotification(sessionid);
		
		//notification
		//Notification				
		 List<Notification> notification = notdao.findNotification(sessionid); 
		 model.addAttribute("notification",notification);
		 //Footer
		 List<Categories> footer = catedao.findCateTop();
			model.addAttribute("footer",footer);
		
			
				
				
		return "notify";
	}
	
	
	
	
	@RequestMapping(value="/index",method = RequestMethod.GET)
	public String UserHomepage(HttpServletRequest request,Model model,@RequestParam (value = "page", required = false, defaultValue = "0") int page) {
		
		
		
				// Sng = request.getSession().getAttribute("sessionid");
		
		//String  sessionstr = (String) request.getSession().getAttribute("sessionid");  
		
		int sessionid =0;
		int pages = page * 5;
		
		System.out.println("yes");
		
		List<TopicJoin> countgrptop = topicdao.CountReply();
		
		System.out.println(countgrptop);
		
		model.addAttribute("countgrptop",countgrptop);
		
			try{
		
			sessionid = (int) request.getSession().getAttribute("sessionid");
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
			 
			 //Notification				
			 List<Notification> notification = notdao.findNotification(sessionid); 
			 model.addAttribute("notification",notification);
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
				
				
				
		          
		return "index";     
	}    
	
	
	   
	  
	@RequestMapping(value="/create",method = RequestMethod.GET)
	public String Usercreate(HttpServletRequest request,Model model) {
		
		List<Categories> c = catedao.findAll(); 
		model.addAttribute("cate",c);
		System.out.println(c);
		//Footer
		//List<Categories> counttop = catedao.findCountTopic(); mera(manickam) background noise issue    m 1 sec kk
		 model.addAttribute("counttop",catedao.findCountTopic());
		
		List<Categories> footer = catedao.findCateTop();
		model.addAttribute("footer",footer);
		
		//notification
		
				int sessionid = (int) request.getSession().getAttribute("sessionid");		
				List<Notification> notification = notdao.findNotification(sessionid); 
				 model.addAttribute("notification",notification);
				
		             
		return "create";                   
	}
	
	@RequestMapping(value="/create",method = RequestMethod.POST)
	public String UsercreatePost(HttpServletRequest request ,Model model,@RequestParam String title,@RequestParam int category,
			@RequestParam String body) {
			
		int sessionid =  (int) request.getSession().getAttribute("sessionid");
		
		topicdao.insert(new Topic(category,sessionid,title,body));
				
		             
		return "redirect:index";                   
	}
	 
	@RequestMapping(value="/login",method = RequestMethod.GET)
	public String Userlogin(Model model) { 
		  
		
				
		return "index"; 
	}
	
	//insert 
	@RequestMapping(value="/login",method = RequestMethod.POST)
	public String UserloginPost(HttpServletRequest request ,Model model,@RequestParam String username,@RequestParam String password) { 
		
		RFC2307MD5PasswordEncryptor enc = new RFC2307MD5PasswordEncryptor();
		
		String encpass  = enc.encryptPassword(password);
		String subenc= encpass.substring(5);
		System.out.println(encpass); 
		String SessionName= "";
		int SessionId;
		List<User> s =userdao.findByName(username,subenc);
		
		List<Admin> admin = admindao.findByName(username, password);
		
		for(User user:s ){
			SessionId = user.getUser_id();
			SessionName = user.getUsername(); 
			request.getSession().setAttribute("sessionusername", SessionName);
			request.getSession().setAttribute("sessionid", SessionId);
			System.out.println(s);
		}
		
		for(Admin a:admin ){
			SessionId = a.getAdmin_id();
			SessionName = a.getUsername(); 
			
			System.out.println("login admin sucess");
			
			return "redirect:admin"; 
		}
		
		
	//	System.out.println(s);
		
		
		
		if(s.isEmpty())
		{
		 	System.out.println("login failed Plese Enter vaild");
		 	model.addAttribute("reg","login fail");
			return "index";
		}
		//System.out.println(userdao.check(username, password));
		System.out.println("login Sucess");
		model.addAttribute("reg","login Sucess");
		model.addAttribute("username",SessionName);
		return "redirect:index"; 
		  
	}
	 
	
	
	@RequestMapping(value="/logout",method = RequestMethod.GET) 
	public String Userlogout(HttpServletRequest request,Model model) {
		
		
		request.getSession().invalidate();
		
		
		
		return "redirect:index"; 
	}
	   
	@RequestMapping(value="/register",method = RequestMethod.GET)
	public String Userregister(Model model) { 
		
	//	String username = "";
	//	model.addAttribute("username",SessionName);
		//request.getSession().invalidate();
		
		//System.out.println(session.getAttribute(username));
		
		//Footercoollllllllllllll
		//List<Categories> counttop = catedao.findCountTopic();
		 model.addAttribute("counttop",catedao.findCountTopic());
		
		List<Categories> footer = catedao.findCateTop();
		model.addAttribute("footer",footer);
		 
		return "register"; 
	}   
	  
	
	//insert
	@RequestMapping(value="/register",method = RequestMethod.POST)
	public String UserregisterPost(Model model,@RequestParam String name,@RequestParam String email,@RequestParam String username,
			@RequestParam String password,@RequestParam ("abc") String avatar,@RequestParam String about) { 
		
		RFC2307MD5PasswordEncryptor enc = new RFC2307MD5PasswordEncryptor();
		 
	//	String passwordenc = "Hello";
		
		String Password  = enc.encryptPassword(password);
		
		String subenc= Password.substring(5);
		
		userdao.insert(new User(name,username,subenc,email,avatar,about));
		
		model.addAttribute("reg","Registration Successful");
		
		return "index";
	}
	
  
	
	
	@RequestMapping(value="/topics",method = RequestMethod.GET)
	public String Usertopics(Model model) {
		
		return "topics";  
	}  
	 
	
	@RequestMapping(value="/topic",method = RequestMethod.GET)
	public String Usertopic(HttpServletRequest request,Model model,@RequestParam int id) {
		
		try
		{
			
			
			int sessionid = (int) request.getSession().getAttribute("sessionid");
			
			
			
		
			
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
			
			//notification
			
							
					List<Notification> notification = notdao.findNotification(sessionid); 
				
						 model.addAttribute("notification",notification);
			
			
			//retrieve Reply acc to id
						 
			//total Post of replied user
						 
				 List<Reply> tpost = repdao.totalposts();	
				 
				 model.addAttribute("tpost",tpost);
			
			//System.out.println(id);
						 List<Reply> find_replys = repdao.findTopic(id);
						 model.addAttribute("count",topicdao.findCountTopic(id));
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
				 
					/* topic.jsp -> reply->card->count topic
					 * List<TopicJoin> toprep = topicdao.topRep(); model.addAttribute("toprep",
					 * toprep);
					 */ 
				  
				
		}
	
		return "topic";
	}
	
	@RequestMapping(value="/topic",method = RequestMethod.POST)
	public String UsertopicPost(HttpServletRequest request,ModelMap model,@RequestParam int topicid,@RequestParam String  reply) {
		
		int sessionid=0;
		try {
			
			sessionid = (int) request.getSession().getAttribute("sessionid");
			//	ModelAndView mv = new ModelAndView();
			//	mv.setView("topic?id=`topicid`");
			if(sessionid == 0)
			{
				
				String nouser ="Please Login123";
				model.addAttribute("Manick",nouser);
				
			
				
			}
			else
			{
				System.out.print(sessionid + topicid + reply);
				System.out.println(repdao.insert(new Reply(sessionid,topicid,reply)));
				
			}
			
			// 1 + session
			
				
			
			
		}
		catch(Exception e)
		{
			model.addAttribute("myException", e);
			model.addAttribute("session", sessionid);
				
		
				
				

			
		}
		
		
		
		
			return "redirect:topic?id="+topicid;  
	}
	
	@RequestMapping(value="/vote",method = RequestMethod.GET) 
	public String vote(HttpServletRequest request,Model model,@RequestParam int  value,@RequestParam int topicid ,@RequestParam int replyid)   {
		
		
		int isVote = 0;
		
		System.out.println();
		
		try {
		 
		 int sessionid = (int) request.getSession().getAttribute("sessionid"); 
		 
		 System.out.println(replyid);
		 
		 int totalVotecount = 0;
		 
		 List <Reply> findAllrep = repdao.findAllReply(replyid);
		 
		 for (Reply reply : findAllrep) {
			totalVotecount =reply.getVote();
		}
		 
		 System.out.println("vote Counts  "+totalVotecount);
		 
		 
		 
		 List<Vote> find_vote = votedao.findVote(sessionid,replyid);
		  if(find_vote.size() == 0  )
		  {
			  
			  //User clicking for first time
			  
			  System.out.println(value);
			  if(value == 1) {
				 
				  //like
				  
				   isVote = 1;
				  System.out.println(sessionid+" sss "+value+" sss "+replyid+ " sss"+ isVote);
				  int voteId =votedao.insertVote(new Vote(replyid,sessionid,isVote));
				  
				  
				  System.out.println("ssssssssssssssssssssssssssssssss");
				  
				  System.out.println(replyid);
				  System.out.println(voteId);
				  System.out.println(votedao.updatereplyvoteInc(replyid, voteId));
				  
			  }
			  
			  else if( value == 0){
				  
				  //dislike
				   isVote = 0;
				  int voteId =votedao.insertVote(new Vote(replyid,sessionid,isVote));
				  
				  System.out.println(votedao.updatereplyvoteDec(replyid, voteId));
			  }
		
				  
			  
		  }
		  
		  
		   
		  
		 System.out.println(find_vote);
		   
		 int Voteclick = 0;
		 int Vote_id = 0;
		 int reply_id = 0;
		 
		 for (Vote vote : find_vote) {
			Vote_id = vote.getVote_id();
			reply_id = vote.getReply_id();
			System.out.println(vote.getUser_id());
			Voteclick = vote.isVote_click();
			
			
		}
		 
		 //Dislikevalue == 0            -1
		 
		 if(Voteclick == 0) {
			 
			 //System.out.println("Dislike");
			 
			 if(value == 0) {
				  System.out.println("you can't dislike more than one time");  //-1
				
			 }
			 
			 else {
				 
				 
	 
				votedao.updatereplyvoteInc2(reply_id, Vote_id);          //0   +2   
			//	votedao.deletevote(Vote_id);							//0
					
				System.out.println("Record incremented"); 
			 }
		 }
		 
		 else if (Voteclick == 1){
		 //like == 1
			 
			 System.out.println("Getting in to like");
			 if(value == 1 && Voteclick == 1) {
				 
				 System.out.println("you can't like more than one time");
			 }
			 else {
				 	
					votedao.updatereplyvoteDec2(reply_id, Vote_id);		
				//	votedao.deletevote(Vote_id);
					
					System.out.println("Record Decremented");	 
			 }
			 
			 
		 }
		 
		  
	//System.out.println(votedao.insert(new Vote(replyid,sessionid)));
		 
		 
		 
		 
		}
		
		catch (Exception e) {
			 // model.addAttribute("manick", "Please Login");
			System.out.println("Please Login");
		}
		
		
		
		
		return "redirect:topic?id="+topicid; 
	}
	
	@RequestMapping(value ="/category", method = RequestMethod.GET)
	public String FilTopCat(@RequestParam int category_id,ModelMap model,HttpServletRequest request)
	{
		//Filter By Category
		
		List<TopicJoin> countgrptop = topicdao.CountReply();
		
		System.out.println(countgrptop);
		
		model.addAttribute("countgrptop",countgrptop);

		
		int sessionid =0;
		try
		{
			sessionid = (int) request.getSession().getAttribute("sessionid");
			List<TopicJoin> filcat = topicdao.TopicCategory(category_id);
			model.addAttribute("topic",filcat);
			//Footer
			// List<Categories> counttop = catedao.findCountTopic();
			 model.addAttribute("counttop",catedao.findCountTopic());
			 	 
			 model.addAttribute("countcate",catedao.findCountCategory());
			 
			//notification
				List<Notification> notification = notdao.findNotification(sessionid); 
			
					 model.addAttribute("notification",notification);
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
			

		
		
		return "index";
		
	}
	
	@RequestMapping(value ="/user", method = RequestMethod.GET)
	public String FilTopUser(@RequestParam int user_id,ModelMap model,HttpServletRequest request)
	{
		
		List<TopicJoin> countgrptop = topicdao.CountReply();
		
		System.out.println(countgrptop);
		
		model.addAttribute("countgrptop",countgrptop);

		int sessionid =0;
		try
		{
			sessionid = (int) request.getSession().getAttribute("sessionid");
			//Filter By Category
			List<TopicJoin> filuser = topicdao.TopicUser(user_id);
			model.addAttribute("topic",filuser);
			//Footer
			// List<Categories> counttop = catedao.findCountTopic();
			 model.addAttribute("counttop",catedao.findCountTopic());
			 
			 
			 model.addAttribute("countcate",catedao.findCountCategory());
			//notification
					
				List<Notification> notification = notdao.findNotification(sessionid); 
				model.addAttribute("notification",notification);
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

		
		return "index";
		
	}
	
	
		@RequestMapping(value ="/Updateprofile", method = RequestMethod.GET)
	public String UpdateProfileGet(HttpServletRequest request,ModelMap model)
	{
		int sessionid = (int) request.getSession().getAttribute("sessionid") ;
		
		System.out.println(sessionid);
		
		List<User> user = userdao.findByUserId(sessionid);
		model.addAttribute("updateuser", user);
		
	//Notification	
		List<Notification> notification = notdao.findNotification(sessionid); 
		model.addAttribute("notification",notification);
		//footer
			List<Categories> footer = catedao.findCateTop();
			model.addAttribute("footer",footer);
	 
		
		return "updateprofile";
	}
		
		@RequestMapping(value ="/Updateprofile", method = RequestMethod.POST)
		public String UpdateProfilePost(HttpServletRequest request,ModelMap model,
				@RequestParam String password,@RequestParam String about) { 
			
			int sessionid = (int) request.getSession().getAttribute("sessionid") ;
			 RFC2307MD5PasswordEncryptor enc = new RFC2307MD5PasswordEncryptor();
			
			 // String passwordenc = "Hello";
			  
			 String Password = enc.encryptPassword(password);
			 
			 String subenc= Password.substring(5);
			 
			 //System.out.println(subenc);             
			 //System.out.println(about);
			 //System.out.println(sessionid);
			  userdao.update(new User(subenc,about),sessionid);
			  model.addAttribute("reg","Update Successfully");
			 
			  
			 
			 			
			return "redirect:index";
		}
		
		@RequestMapping(value ="/viewpost", method = RequestMethod.GET)
		public String ViewMyPost(HttpServletRequest request,ModelMap model)
		{
			int sessionid = (int) request.getSession().getAttribute("sessionid");
			System.out.println("Yes");
		
		List<TopicJoin> top = topicdao.TopicUser(sessionid);
		
		model.addAttribute("topic",top);
		//Footer
		// List<Categories> counttop = catedao.findCountTopic();
		 model.addAttribute("counttop",catedao.findCountTopic());
		 
		 model.addAttribute("countcate",catedao.findCountCategory());
			
		 List<Notification> notification = notdao.findNotification(sessionid); 

		 model.addAttribute("notification",notification);
		 
		 List<Categories> footer = catedao.findCateTop();
			model.addAttribute("footer",footer);

			
			return "ViewMyPost";
		}
		
		@RequestMapping(value ="/updatetopic", method = RequestMethod.GET)
		public String UpdateTopicGet(HttpServletRequest request,ModelMap model,int  topic_id)
		{
			System.out.println(topic_id);
			
			
			 int sessionid = (int) request.getSession().getAttribute("sessionid") ;
			  
			 List<TopicJoin> topic = topicdao.findTopic(topic_id);
			 model.addAttribute("topic", topic); 
			  System.out.println(sessionid);
			//Notification				
				 List<Notification> notification = notdao.findNotification(sessionid); 
				 model.addAttribute("notification",notification);
				 //Footer
				 List<Categories> footer = catedao.findCateTop();
					model.addAttribute("footer",footer);
			 	
			return "updatetopic";
		}
		
		@RequestMapping(value ="/updatetopic", method = RequestMethod.POST)
		public String UpdateTopicPost(HttpServletRequest request,ModelMap model,@RequestParam String title,@RequestParam String body,@RequestParam int topicid)
		{
			
			 int sessionid = (int) request.getSession().getAttribute("sessionid") ;
			 
			 System.out.println(topicid);
			 System.out.println(title);
			 System.out.println(body);
			 
			 topicdao.updateTopic(new Topic(title,body), topicid);

			 return "redirect:index";
		}
		
		@RequestMapping(value ="/deletetopic", method = RequestMethod.GET)
		public String DeleteTopic(HttpServletRequest request,ModelMap model,@RequestParam int topic_id)
		{
			 int sessionid = (int) request.getSession().getAttribute("sessionid") ;
			
			System.out.println(topic_id);
			topicdao.deleteTopic(topic_id);
			return "redirect:viewpost";
		}
		
		
		@RequestMapping(value ="/search", method = RequestMethod.GET)
		public String SearchTopic(HttpServletRequest request,ModelMap model,@RequestParam String search)
		{
			 try
			 {
				 int sessionid = (int) request.getSession().getAttribute("sessionid") ;
					System.out.println(search);
					List<TopicJoin>  findtitle = topicdao.SearchTopic(search);
					
					System.out.println(findtitle);
					
					model.addAttribute("topic",findtitle);
					
					//Notification				
					 List<Notification> notification = notdao.findNotification(sessionid); 
					 model.addAttribute("notification",notification);
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
			
			 return "index";  
		}
		
		
		@RequestMapping(value ="/viewreply", method = RequestMethod.GET)
		public String ViewReply(HttpServletRequest request,ModelMap model)
		{
			int sessionid = (int) request.getSession().getAttribute("sessionid");
			System.out.println("Yes");
		
		List<Reply> reply = repdao.ReplyUser(sessionid);		
		model.addAttribute("reply",reply);
		//Footer
		// List<Categories> counttop = catedao.findCountTopic();
		 model.addAttribute("counttop",catedao.findCountTopic());
		 
		 model.addAttribute("countcate",catedao.findCountCategory());
			
		 List<Notification> notification = notdao.findNotification(sessionid); 

		 model.addAttribute("notification",notification);
		 
		 List<Categories> footer = catedao.findCateTop();
			model.addAttribute("footer",footer);

			
			return "viewreply";
		}
		
		@RequestMapping(value ="/updatereply", method = RequestMethod.GET)
		public String UpdateReplyGet(HttpServletRequest request,ModelMap model,int  reply_id)
		{
			System.out.println(reply_id);
			
			
			 int sessionid = (int) request.getSession().getAttribute("sessionid") ;
			 
			 List<Reply> reply = repdao.findReply(reply_id);
			 model.addAttribute("reply", reply);
			 
			 
			 
			 	//Notification				
				 List<Notification> notification = notdao.findNotification(sessionid); 
				 model.addAttribute("notification",notification);
				 //Footer
				 List<Categories> footer = catedao.findCateTop();
					model.addAttribute("footer",footer);  
			 	
			return "updatereply";
		}
		
		@RequestMapping(value ="/updatereply", method = RequestMethod.POST)
		public String UpdateReplyPost(HttpServletRequest request,ModelMap model,@RequestParam int replyid,@RequestParam String body)
		{
			
			 int sessionid = (int) request.getSession().getAttribute("sessionid") ;
			 
			 System.out.println(replyid);
			 //System.out.println(title);
			 System.out.println(body); 
			 
			 repdao.updateReply(new Reply(body), replyid);
			 

			 return "redirect:index";
		}

		@RequestMapping(value ="/deletereply", method = RequestMethod.GET)
		public String DeleteReply(HttpServletRequest request,ModelMap model,@RequestParam int reply_id)
		{
			 int sessionid = (int) request.getSession().getAttribute("sessionid") ;
			
			System.out.println(reply_id);
			 repdao.deleteReply(reply_id);
			return "redirect:viewreply";
		}
	

		@RequestMapping(value ="/profile", method = RequestMethod.GET)
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
		 	
			return "profile";
		}

		
		
		
		
		
		
		
			



}
