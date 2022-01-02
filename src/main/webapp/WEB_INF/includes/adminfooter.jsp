<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    	<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>


<div class="col-md-4"  id="show">
      <div class="sidebar">
      <div class="block" style="margin-top: 30px;">
        
          <h3>Categories</h3>
          <div class="list-group">
          
          <a href="/admin" class="list-group-item active"> All Topics <span class="badge float-right"> ${counttop}</span></a>
          
          
          <c:forEach var="foot" items="${footer}" varStatus="loop">
          
          <a href="/admincategory?category_id=${foot.getCategory_id() }" class="list-group-item ">  ${foot.getName()}  <span class="badge float-right"> ${foot.getTopcate_id()}</span>  </a>
          
 		</c:forEach>

          </div>
        </div>
 
      </div>
    </div>





  </div>
 </div><!-- /.container -->     
