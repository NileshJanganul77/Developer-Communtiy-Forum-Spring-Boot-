<form action="register.php" method="POST" enctype="multipart/form-data">
              <div class="form-group">
                <label>Name*</label>
                <input name="name" type="text" class="form-control" placeholder="Enter your name">
              </div>

              <div class="form-group">
                <label>Email Address*</label>
                <input name="email" type="email" class="form-control" placeholder="Enter your Email Address">
              </div>

              <div class="form-group">
                <label>Choose Username*</label>
                <input name="username" type="text" class="form-control" placeholder="Enter new username">
              </div>

              <div class="form-group">
                <label >Password*</label>
                <input name="password" type="password" class="form-control"  placeholder=" Enter Password">
              </div>

              <div class="form-group">
                <label >Confirm Password*</label>
                <input name="confirmpassword" type="password" class="form-control"  placeholder=" Re-enter Password">
              </div>

              <div class="form-group">
                <label>Upload Avatar*</label>
                <input name="avatar" type="file" class="form-control" placeholder="Upload Avatar">
              </div>

              <div class="form-group">
                <label>About Me</label>
              <textarea name="about" class="form-control" id="about" cols="50" rows="5" placeholder="Tell us about yourself (Optional) " ></textarea>
              </div>
 
              <input name="register" type="submit" value="Login" class="btn btn-success">
            </form>   
