<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


	<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>


<head> 
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.6">
    <title>Talking Space</title>
    
    <!-- Bootstrap core CSS 
<link href="css/bootstrap.css" rel="stylesheet">-->


 


<link href="webjars/bootstrap/4.4.1/css/bootstrap.min.css"
	    		rel="stylesheet">
<script src="webjars/popper.js/1.14.3/umd/popper.min.js"></script>

<script src="webjars/jquery/3.4.1/jquery.js"></script>
<script src="webjars/jquery/3.4.1/jquery.min.js"></script>
 <script src="webjars/bootstrap/4.4.1/js/bootstrap.min.js"></script>	
 
 <!-- For Word Editor -->
<script src="//cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script>
   
 <!-- Custom styles for this template -->
    <link href="WEB_INF/css/custom.css" rel="stylesheet">
  </head>
  <body>
   <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top ">
   <a class="navbar-brand" href="#">
    Talking Space
      </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  
  <form class="form-inline" action ="/search" >
  <input type="text" class="form-control"  name = "search" id="search" placeholder="Search" aria-label="Recipient's username" aria-describedby="basic-addon2">
  <div class="input-group-append">
    <button class="btn btn-outline-secondary text-light" type="submit">Search</button>
  </div>
</form>
   
   
   

  <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
    <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="/index">Home <span class="sr-only">(current)</span></a>
      </li>
      
       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         Trends
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">      
        <a class="dropdown-item" href="/programming">Programming Language</a>
          <a class="dropdown-item" href="/jobs">IT Jobs</a>
          <div class="dropdown-divider"></div>
           <a class="dropdown-item" href="/solver">Leader Board</a>
        </div>
      </li> 
       
       <c:choose>
    <c:when test="${empty sessionusername}">
        <li class="nav-item active" id="crtopic">
        <a class="nav-link" href="/register">Create Account <span class="sr-only">(current)</span></a>
      </li>
    </c:when>
    <c:otherwise>
        <li class="nav-item active" id = "crtopic">
        <a  class="nav-link" href="/create">Create Topic<span class="sr-only">(current)</span></a>
      </li>
      
     
       
       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         <c:out value="${sessionusername}"/>
         <%--  <c:out value="${sessionid}"/> --%>
         
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">      
        <a class="dropdown-item" href="/viewpost">View MyPost</a>
        	<div class="dropdown-divider"></div>
          <a class="dropdown-item" href="/Updateprofile">Update Profile</a>
          <a class="dropdown-item" href="/viewreply">View My Replies</a>
          <a class="dropdown-item" href="/logout">Logout</a>
        </div>
      </li>
      
      <br />
    </c:otherwise>
</c:choose>
    </ul>
    
  </div>
</nav>

