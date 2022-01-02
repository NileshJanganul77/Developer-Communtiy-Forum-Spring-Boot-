
 <%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
 
 <script type="text/javascript">
    function Validate() {
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("confirmpassword").value;
        if (password != confirmPassword) {
            alert("Passwords do not match.");
            return false;
        }
        return true;
    }
</script>

<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script>
    $(document).ready(function(){
        $('input[type="file"]').change(function(e){
        	 document.getElementById("abc").value = e.target.files[0].name;
           // alert('The file "' + fileName +  '" has been selected.');
        });
    });
</script>
 
  <jsp:include page="../includes/header.jsp" />
<div class="container">
  <div class="row">
    <div class="col-md-8">
      <div class="main-col">
        <div class="block">
          <h1 class="float-left">Create an Account</h1>
          <h4 class="float-right">Developer Community Forum</h4>
          <div class="clearfix"></div>
          <hr>
 
<%--  ${updateuser} --%>
   <c:forEach var="upuser" items="${updateuser}" varStatus="loop">
          <form action="/Updateprofile" method="POST" enctype="multipart/form-data">
              <div class="form-group">
                <label>Name*</label>
                <input name="name" type="text" class="form-control" value ="${upuser.getName()}" placeholder="Enter your name" minlength="6" maxlength="20" readonly>
              </div>

              <div class="form-group">
                <label>Email Address*</label>
                <input name="email" type="email" class="form-control" value ="${upuser.getEmail()}" placeholder="Enter your Email Address"  maxlength="25" readonly  >
              </div>

              <div class="form-group">
                <label>Choose Username*</label>
                <input name="username" type="text" class="form-control" value ="${upuser.getUsername()}" placeholder="Enter new username" minlength="6" maxlength="10" readonly >
              </div>

              <div class="form-group">
                <label >Password*</label>
                <input id ="password" name="password" type="password" class="form-control"  placeholder=" Enter Password" minlength="6" maxlength="16"  >
              </div>

              <div class="form-group">
                <label >Confirm Password*</label>
                <input id ="confirmpassword" name="confirmpassword" type="password" class="form-control"  placeholder=" Re-enter Password" >
              </div>
	
              <div class="form-group">
                <label>Upload Avatar*</label>
                <input  name="avatar" type="file" class="form-control" placeholder="Upload Avatar" value ="${upuser.getAvatar()}" disable readonly >
              </div>
              
              <input id="abc" name="abc" type="hidden" value="">

              <div class="form-group">
                <label>About Me</label>
              <textarea name="about" class="form-control"   id="about" cols="50" rows="5" placeholder="Tell us about yourself (Optional) "  > ${upuser.getAbout()}</textarea>
              </div>
 
              <input name="register" type="submit" value="Update" onclick="return Validate()" class="btn btn-danger">
            </form>   
 		</c:forEach>



        </div>
      </div>
    </div>
    
     <jsp:include page="../includes/footer.jsp" />     
</body>
</html>
    