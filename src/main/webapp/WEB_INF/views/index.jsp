<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="en">
  


<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>

<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime" %>

 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="../includes/header.jsp" />

 <script>
	
	var dis =  "${reg}" ;
	if(dis.length != 0)	
   alert(dis);
</script>




            <br>
            <br>
            
            

        
<div class="container">
  <div class="row">
    <div class="col-md-8">
      <div class="main-col">
        <div class="block">
          <h1 class="float-left"> Welcome to Talking Space</h1>
          
          
          
          <h4 class= "float-right" style="vertical-align:bottom  ">Developer Community Forum</h4>
          <div class="clearfix"></div>
          <hr>
         <%-- <%--  ${topic} --%> 
          
            <ul id="topics">
            
             <c:forEach var="topic" items="${topic}">
            
            
            
              <li class="topic">
                <div class="row">
                  <div class="col-md-2">
                    <img src="WEB_INF/images/avatar/${topic.getAvatar()}" alt="" class="avatar float-left">
                  </div>
                  <div class="col-md-10"> 											
                    <div class="topic-content float-right">
                      <h3><a href="/topic?id=${topic.getTopic_id()}"> ${topic.getTitle()}</a></h3> 
                      <div class="topic-info">
                        <a href="/category?category_id=${topic.getCategory_id()}">${topic.getName()}</a> >> <a href="/user?user_id=${topic.getUser_id()}">${topic.getUsername()}</a> >> Posted on  <fmt:parseDate value="${topic.getCreate_date()}"  pattern="yyyy-MM-dd'T'HH:mm" type="both" />             
                        <span class="badge badge-pill badge-dark float-right">
                        <c:set var="flag" value="true" />
                        
                         <c:forEach var="counttp" items="${countgrptop}">
                         	                                        	
                         	<c:choose>
							    <c:when test = "${topic.getTopic_id() == counttp.getTopic_id()}">
  
							    <c:if test = "${not empty counttp.getCount() &&  counttp.getCount() > 0}">
								         ${counttp.getCount()}
								         <c:set var="flag" value="false" />  
								      </c:if>
			     
							       
							    </c:when>  
							    
							    
							    
							</c:choose>
                         
                         
                        
                        
                         
                         
                         </c:forEach>
                         <c:if test = "${flag == true}">
								         0  
								      </c:if>
                         
                         
                         </span> 
                      </div>
                    </div>
                  </div>
                </div>
              </li>
               
              </c:forEach>
              
            </ul>
            
            
            
           
            
          
            
            <nav aria-label="Page navigation example">
			  <ul class="pagination justify-content-center">
			  
			  
			   <c:set var = "minpage" value = "${pagenumber}"/>
			    <c:if test = "${pagenumber != 0 }">
		         <c:set var = "minpage" value = "${pagenumber - 1}"/>
		      </c:if>
			  
			  
			    <li class="page-item">
			      <a class="page-link" href="/index?page=${minpage}">Previous</a>
			    </li>
			   
			 
			    
			   
			    
			    <c:forEach var="page" begin = "1" end="${tpage}"  varStatus="loop">
			     
			    
			    <li class="page-item"><a class="page-link" href="/index?page=${loop.index - 1}">${loop.index}</a></li>
			    
			    
			    </c:forEach>
			    
			    
			   
			    
			    <c:set var = "maxpage" value = "${pagenumber}"/>
			    <c:if test = "${pagenumber < tpage - 1}">
		          <c:set var = "maxpage" value = "${pagenumber + 1}"/>
		      </c:if>
			    
			    
			    <li class="page-item">
			    
			    
			      <a class="page-link" href="/index?page=${maxpage}">Next</a>
			    </li>
			  </ul>
			</nav>
            
            
            <h3>Forum Statistics</h3>
            <ul>
              
              <li>Total Number of Topics : <strong> ${counttop}</strong></li>
              <li>Total Number of Categories : <strong>${countcate}</strong></li>
            </ul>
        </div>
      </div>
    </div>

    
    <jsp:include page="../includes/footer.jsp" />
    </body>
</html>
