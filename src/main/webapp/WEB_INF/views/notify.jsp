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
          <h1 class="float-left">Notifications</h1>
          
          
          
          <h4 class= "float-right" style="vertical-align:bottom  ">Simple PHP Forum Engine</h4>
          <div class="clearfix"></div>
          <hr>
          
          
            <ul id="topics">
            
           <%-- ${notify} --%>
            
              <c:forEach var="topic" items="${notify}"> 
            
            
            
               <li class="topic">
                <div class="row">
                  <div class="col-md-2">
                    <img src="WEB_INF/images/avatar/${topic.getAvatar()}" alt="" class="avatar float-left">
                  </div>
                  <div class="col-md-10">
                    <div class="topic-content float-right">
                      <h3><a href="/topic?id=${topic.getTopic_id()}"> ${topic.getTitle()} </a></h3>
                      <div class="topic-info">
                        <a href="category.php">${topic.getName()}</a> >> <a href="profile.html">${topic.getUsername()}</a> >><fmt:parseDate value="${topic.getCreate_date()}"  pattern="yyyy-MM-dd'T'HH:mm" type="both" />
                      
                      </div>
                    </div>
                  </div>
                </div>
              </li>
               
              </c:forEach>
              
            </ul>
            
        </div>
      </div>
    </div>

    
    <jsp:include page="../includes/footer.jsp" />
    </body>
</html>
