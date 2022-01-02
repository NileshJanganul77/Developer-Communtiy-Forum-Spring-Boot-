
<!doctype html>
<html lang="en">

<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>

 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="../includes/adminheader.jsp" />


					
					 
	  <script>
	  if(${session}==0)
		  {
		  	alert("${nouser}");
		  }
	  
		
			 
		  
        </script>  
      				 
					 
					


<div class="container">
  <div class="row">
    <div class="col-md-8">
      <div class="main-col">
        <div class="block">
          <h1 class="float-left">Welcome to Talking Space</h1>
          <h4 class="float-right">Developer Community Forum</h4>
          <div class="clearfix"></div>
          <hr>
          
          
        
          
           <c:forEach items="${TopicJoin}" var="TopicJoin" >
           
           
          <h3>${TopicJoin.getTitle()} </h3>
           <p style="text-align: right;"> Asked on <fmt:parseDate value="${TopicJoin.getCreate_date()}"  pattern="yyyy-MM-dd'T'HH:mm" type="both" /></p>
 
           <ul id="topics">
           
           
          
           
               <li id="main-topic" class="topic topic">
                   <div class="row">
                       <div class="col-md-2">
                           <div class="user-info">
                               <img src="WEB_INF/images/avatar/${TopicJoin.getAvatar()}" alt="" class="avatar float-left">
                                   <ul>
                                       <li><strong>${TopicJoin.getUsername()}</strong></li>
                                       <li>${countposts} Posts</li>
                                       <li><a href="/adminprofile?userid=${TopicJoin.getUser_id() }">Profile</a></li>
                                   </ul>
                          </div>
                       </div>
                       <div class="col-md-10">
                           <div class="topic-content float-right">
                               <p>
                               ${TopicJoin.getBody()}
                               </p>
                           </div>
                       </div>
                   </div>
               </li>
               
               
                
               
               </c:forEach>
               
               
               
               No. of Replies:  ${find_replys.size()}
               
               <c:forEach items="${find_replys}" var="replys" varStatus="loop">
               <li id="main-topic" class="topic topic" >
               
               
                <%--  ${replys} --%>

                   <div class="row">
                   
                       <div class="col-md-2">                            
                           <div class="user-info">
                               <img src="WEB_INF/images/avatar/${replys.getAvatar()}" alt="" class="avatar float-left">
                                   <ul>
                                       <li><strong>${replys.getUsername()} </strong></li>
                                       <li>45 Post</li>
                                       <li><a href="/adminprofile?userid=${replys.getRep_user_id() }">Profile</a></li>
                                   </ul>
                          </div>
                       </div>
                       <div class="col-md-10">
                           <div class="topic-content float-right">
                               <p>
                               ${replys.getBody()} 
                               </p>
                               <p> Replied on <fmt:parseDate value="${replys.getCreate_date()}"  pattern="yyyy-MM-dd'T'HH:mm" type="both" />  <span style="float:right;">
       <a href="vote?value=1&topicid=${TopicId}&replyid=${replys.getRep_id()}"><img src ="WEB_INF/images/up.png" id="like" name="up"/></a>  ${replys.getVote()} <a href="vote?value=0&topicid=${TopicId}&replyid=${replys.getRep_id()}"><img src ="WEB_INF/images/down.png"id="like" name="down"/></a>
    </span> </p>
                              
                           </div>
                       </div>
                   </div>
                   
                   
                   
                   
                  
               </li>
               </c:forEach>
           </ul>
           
           
            <%-- <h3>Reply to topic</h3>
            <form action="/topic" method="POST">
            
            <input type = "hidden" value = "${TopicId}" name="topicid">
            
              <div class="form-group">
                <textarea name="reply" id="" cols="50" rows="5" class="form-control">
                    </textarea>
                    <script>CKEDITOR.replace('reply');</script>
              </div>
              <div class="form-group">
              <button type="submit" class="btn btn-danger">Reply</button>
              <button type="reset" class="btn btn-link">Cancel</button>
              </div>
              

            </form>
            
 --%>            
            
            
            
            <!-- 
            
            vote count
            
            	userid  , replier id , votecount 
            	session   onlick vote  up,null,down
            	
            	1) user can't like mulltitple time
            		
            		check userLogin or not
            		{
            		
            		onclick button 
            		search like or dislike or null
            		
            		if like 
            		only dislike
            		
            		if null
            		both like and dislike
            			update vote_replytbl (+/- by 1)
            			update voteboolen_vount_tbl (like / dislike)
            		
            		
            		if dislike only like
            		
            		
            		
            		
            		
            		
            		
            		
            		
            		
            		
            		
            		
            		
            		
            		visitors can't hit like and dislike
check for like dislike and null
initial vote value in reply table -> vote = 0

if(like)
disable like("message display")
enable dislike
update vote_table set vote_count = 0;
update replies_table set vote = vote - 1

if(dislike)
enable like ("message display")
update vote_table set vote_count = 1;
update replies_table set vote = vote + 1
disable dislike


if null
enable both like and dislike
if(like)
insert vote_table set vote_count = 1;
update replies_table set vote =vote +1
disable like
------------------
enable dislike
update replies_table set vote = vote -1
end

if(dislike)
update vote_table set vote_count = 0;
update replies_table set vote = vote -1
disable dislike
------------------
enable like
update replies_table set vote = vote +1

end

update vote column in replies_table
when click like-> +1
when click dislike-> -1

            		
            		
            		
            		link of notification
            		click ->reload
            		redirect to index
            		
            		notification->0   
            		
            		
            		
            		
            		
            		if votecount == 0 
            		update rep_vote count+1
            		or
            		update rep_votecount-1
            		
            		else 
            		
            		increment +1
            		
            		decrement -1
            		
            		
            	1   like	   		1		1		2
            	0	neutral 		0				1
            	-1  dislike			-1		-1		0
             
             -->
            
            
            
            
               
        </div>
      </div>
    </div>
    
      <jsp:include page="../includes/adminfooter.jsp" />     
</body>
</html>
