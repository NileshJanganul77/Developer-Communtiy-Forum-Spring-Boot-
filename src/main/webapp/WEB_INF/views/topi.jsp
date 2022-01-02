 <!-- This is a viewer page i.e display coding page -->
 <!-- <?php // echo $heading; ?>          To retrieve value  of heading variable from index.php and displaying it here... it is used for debugging purpose  --> 

<?php include('includes/header.php'); ?>

<ul id="topics">
               <li id="main-topic" class="topic topic">
                   <div class="row">
                       <div class="col-md-2">
                           <div class="user-info">
                               <img src="images/avatar/<?php echo $topic['avatar'] ?>" alt="" class="avatar float-left">
                                   <ul>
                                       <li><strong><?php echo $topic['username']; ?></strong></li>
                                       <li><?php echo userPostCount($topic['id'])." Posts "; ?></li>
                                       <li><a href="topics.php?user=<?php echo  $topic['user_id']; ?>">Profile</a></li>
                                   </ul>
                          </div>
                       </div>
                       <div class="col-md-10">
                           <div class="topic-content float-right">
                               <p>
                               <?php echo $topic['body']; ?>
                               </p>
                           </div>
                       </div>
                   </div>
               </li>

               <?php foreach($replies as $reply){ ?>
               <li id="main-topic" class="topic topic">
                 
                   <div class="row">
                       <div class="col-md-2">
                           <div class="user-info">
                               <img src="images/avatar/<?php echo $reply['avatar'] ?>" alt="" class="avatar float-left">
                                   <ul>
                                       <li><strong><?php echo $reply['username']; ?></strong></li>
                                       <li><?php echo userPostCount($reply['id'])." Posts "; ?></li>
                                       <li><a href="topics.php?user=<?php echo  $reply['user_id']; ?>">Profile</a></li>
                                   </ul>
                          </div>
                       </div>
                       <div class="col-md-10">
                           <div class="topic-content float-right">
                               <p>
                               <?php echo $reply['body']; ?>
                               </p>
                           </div>
                       </div>
                   </div>
               </li>
               <?php } ?>
           </ul>
            <h3>Reply to topic</h3>
            <form action="">
              <div class="form-group">
                <textarea name="reply" id="" cols="50" rows="5" class="form-control">
                    </textarea>
                    <script>CKEDITOR.replace('reply');</script>
              </div>
            </form>


<?php include('includes/footer.php'); ?>
