 <!doctype html>
<html lang="en">

<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
  <jsp:include page="../includes/header.jsp" />
  <br>
  <br>
<div class="container">
  <div class="row">
    <div class="col-md-8">
      <div class="main-col">
        <div class="block">
          <h1 class="float-left"> Welcome to Talking Space</h1> 
          <h4 class= "float-right" style="vertical-align:bottom">Developer Community Forum</h4>
          <br><br>
          <div class="clearfix"></div>
       
          <form action="/create" method="POST">
              <div class="form-group">
                <label>Topic Title</label>
                <input name="title" type="text" class="form-control" placeholder="Enter topic title" >
              </div>  
				
				
				<div class="form-group">
                    <label>Category</label>
                    <select class="form-control" name="category">
				<c:forEach items="${cate}" var="cat">
					
					 <option value="${cat.getCategory_id()}">${cat.getName()}</option>
					
				</c:forEach>
				
				</select>
              </div>
				
				
              
                   
                     

              <div class="form-group">
                <label>Topic body</label>
             <textarea name="body" class="form-control" id="about" cols="50" rows="5" placeholder="Enter Topic body " >
      
             </textarea>
             <script>CKEDITOR.replace('body');</script>
              </div>
              <input name="register" type="submit" value="Post" class="btn btn-danger">
          </form>
          </div>
        </div> 
       </div>
     <jsp:include page="../includes/footer.jsp" />

  </body>
</html>
