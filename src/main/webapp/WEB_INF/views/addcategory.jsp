<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="en">
  


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
       
          <form action="/addcategory" method="POST">
              <div class="form-group">
                <label>Category</label>
                <input name="catname" type="text" class="form-control" placeholder="Enter Category title" >
              </div>
               <div class="form-group">
                <label>Category Description</label>
             <textarea name="catdesc" class="form-control" id="about" cols="50" rows="5" placeholder="Enter Category Description " >
      
             </textarea>
            
              </div>
              <input name="register" type="submit" value="Add" class="btn btn-danger">
              </form>
          </div>
        </div> 
       </div>
     <jsp:include page="../includes/adminfooter.jsp" />

  </body>
  </html>            
         		