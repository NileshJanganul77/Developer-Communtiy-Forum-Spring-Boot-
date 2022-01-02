<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    	<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
    
    
    <script>
    document.getElementById("login").style.display = "none"; 
		/* var user = "${username}";

		if(user.length != 0)
		{
			  document.getElementById("login").style.display = "none"; 
		} 
		else mic  issue  got it? are you there? yes are you there? are you there? text here
				
		{
			  document.getElementById("login").style.display = "block";
		}	
 */		
   
	</script>
	
	
	<script>
    $(document).ready(
            function() {
                setInterval(function() {
                    var randomnumber = Math.floor(Math.random() * 100);
                    $('#notifi').load('/notification').fadeIn("slow");
                }, 7000);
            });
</script>
	
	
	
	
	
	
    
<div class="col-md-4"  id="show">
      <div class="sidebar">
      
      
       <c:choose>
    <c:when test="${empty sessionusername}">
        <div class="block" id ="login">
          <h3>Login Form</h3>
            <form action="/login" method ="post">
              <div class="form-group">
                <label>Username</label>
                <input name="username" type="text" class="form-control" placeholder="Enter Username">
              </div>

              <div class="form-group">
                <label >Password</label>
                <input name="password" type="password" class="form-control"  placeholder=" Enter Password">
              </div>
              
              <input name="do_login" type="submit" value="Login" class="btn btn-success">
              <a href="/register" class="btn btn-default">Signup</a>
    
            </form>
        </div>
    	</c:when>  
    	<c:otherwise>
    		
    		
    		<div class="block" id ="notifi">
    		
    		<jsp:include page="../views/notification.jsp" />
    		
    		</div>
    		
    	</c:otherwise>
    	
    	     
      </c:choose> 
        
        
      
        
       <%--  >
        
        
        	
       
        ${loop.count} --%>
        

        <div class="block" style="margin-top: 30px;">
        
          <h3>Categories</h3>
          <div class="list-group">
          
          <a href="/index" class="list-group-item active"> All Topics <span class="badge float-right"> ${counttop}</span></a>
          
          
          <c:forEach var="foot" items="${footer}" varStatus="loop">
          
          <a href="/category?category_id=${foot.getCategory_id() }" class="list-group-item ">  ${foot.getName()}  <span class="badge float-right"> ${foot.getTopcate_id()}</span>  </a>
          
 		</c:forEach>

          </div>
        </div>
 
      </div>
    </div>





  </div>


</div><!-- /.container -->
<!-- <script src="templates/js/bootstrap.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script> -->
     
