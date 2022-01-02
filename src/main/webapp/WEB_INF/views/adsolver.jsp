<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<jsp:include page="../includes/adminheader.jsp" />
<title>Insert title here</title>
</head>
<body>    

<br><br>
<div class="container">
  <div class="row">
    <div class="col-md-8">
      <div class="main-col">
        <div class="block">
          <h1 class="float-left"> Welcome to Talking Space</h1> 
          <h4 class= "float-right" style="vertical-align:bottom">Developer Community Forum</h4>
          <br><br>
          
          <div class="clearfix"></div>
           <table class="table">
          
				    <thead>
				      <tr>
				      		<th>Rank </th>
					        <th>Username</th>
					        <th>Vote</th>
				      </tr>
				    </thead>
				    <tbody>
				      <c:forEach var="vote" items="${vote}" varStatus="loop" end="9" >
         
				      <tr>
				      		<td>${loop.index + 1}</td>
				        	<td>${vote.getUsername()} </td>
				        	<td>${vote.getVote()}</td>
				      </tr>
				    </c:forEach> 
				  </tbody>
  		  </table>
  		  
  		  
           
           
   		</div>
        </div> 
       </div>
       
       <jsp:include page="../includes/adminfooter.jsp" />

</body>
</html>