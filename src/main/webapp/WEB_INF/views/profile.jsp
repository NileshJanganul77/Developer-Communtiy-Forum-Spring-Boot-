<!doctype html>
<html lang="en">

<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>

 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="../includes/header.jsp" />
	  <script>
	  if(${session}==0)
		  {
		  	alert("${nouser}");
		  } 
        </script>  			

<br> <br>
<div class="container">
  <div class="row">
    <div class="col-md-8">
      <div class="main-col">
        <div class="block">
          <h1 class="float-left"> Welcome to Talking Space</h1>          
          <h4 class= "float-right" style="vertical-align:bottom  ">Developer Community Forum</h4>
          <div class="clearfix"></div>
          <hr>
          
          <c:forEach items="${user}" var="user" >
         <div class="card">
            <img src="WEB_INF/images/avatar/${user.getAvatar() }" alt="John" style="width:100%">
            <h1>${user.getName() }</h1>
            <p class="title">${user.getUsername()}</p>
            <p>${user.getAbout() }</p>
            <a href="#"><i class="fa fa-dribbble"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
            <a href="#"><i class="fa fa-facebook"></i></a>
          
        </div>
        </c:forEach>    
          
           </div>
      </div>
    </div>

    
    <jsp:include page="../includes/footer.jsp" />
    </body>
</html>
          



    
      <%-- <jsp:include page="../includes/footer.jsp" /> --%>     
          
          