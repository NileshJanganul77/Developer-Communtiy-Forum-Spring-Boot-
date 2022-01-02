<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>

<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime" %>

 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="../includes/adminheader.jsp" />
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
					        <th>Category</th>
					        <th>Description</th>
				      </tr>
				    </thead>
				    <tbody>
				      <c:forEach var="category" items="${category}" varStatus="loop">
         
				      <tr>
				        	<td>	${category.getName()} </td>
				        	<td>${category.getDescription()}</td>
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