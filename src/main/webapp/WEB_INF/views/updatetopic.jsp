 <!doctype html>
<html lang="en">

<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
  <jsp:include page="../includes/header.jsp" />
<div class="container">
  <div class="row">
    <div class="col-md-8">
      <div class="main-col">
        <div class="block">
          <h1 class="float-left"> Welcome to Talking Space</h1> 
          <h4 class= "float-right" style="vertical-align:bottom">Developer Community Forum</h4>
          <br><br>
          <div class="clearfix"></div>
       
       
          <form action="/updatetopic" method="POST">
          <c:forEach items="${topic}" var="topic">
              <div class="form-group">
              <input type ="hidden" name="topicid" value="${topic.getTopic_id()}"/>
                <label>Topic Title</label>
                <input name="title" type="text" class="form-control" placeholder="Enter topic title" value="${topic.getTitle() }" >
              </div>  
				
				
				<div class="form-group">
                    <label>Category</label>
                	 <input name="category" type="text" class="form-control" placeholder="Enter Category" value="${topic.getName() }" readonly  >    
                </div>
				
				
              
                   
                     

              <div class="form-group">
                <label>Topic body</label>
             <textarea name="body" class="form-control" id="about" cols="50" rows="5" placeholder="Enter Topic body " >
      			${topic.getBody() }
             </textarea>
             <script>CKEDITOR.replace('body');</script>
              </div>
              <input name="register" type="submit" value="Update" class="btn btn-danger">
              </c:forEach>
          </form>
          </div>
        </div> 
       </div>
     <jsp:include page="../includes/footer.jsp" />

  </div>
</div>
