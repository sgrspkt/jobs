<?php
require_once('model/connection.class.php');
require_once('model/admin.class.php');
?>
<?php
$admin_id=isset($_GET['admin_id'])?(int)$_GET['admin_id']:'';
$updateObj=new Admin();
$updateObj->setAdminId($admin_id);
$admins=$updateObj->viewAdmin();
?>

<script type="text/javascript" src="plugins/jQuery/jQuery-2.2.0.min.js"></script>
<script src="js/jquery-1.9.1.min.js"></script>
        <script src="js/bootstrap-datepicker.js"></script>
        <script type="text/javascript" src="js/custom.js"></script>
<form name="add_admin" method="post" action="controller/process_update_admin.php">
<div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Update Admin</h3>
            </div>
            <?php
            foreach($admins as $value){
              /*echo '<pre>';
  var_dump($value);*/

?>
            <form role="form">
              <div class="box-body">
                <div class="form-group">
                  <label for="password">Password</label>
                  <input type="password" class="form-control" id="password" name="password" placeholder="Enter Password Here" required="required">
                </div>
                <div class="form-group">
                  <label for="password">Check Password</label>
                  <input type="password" class="form-control" id="ckpassword" name="ckpassword" placeholder="Enter Password Again" required="required">
                </div>
               <!--  <div class="form-group">
                 <label for="categoryname">Movie Hall Location</label>
                 <input type="text" class="form-control" id="movie_hall_location" name="movie_hall_location" placeholder="Enter Movie Hall Location" required="required" value="<?php echo $value['location'];?>">
               </div>
               <div class="form-group">
                 <label for="categoryname">Movie Hall Map Link</label>
                 <input type="text" class="form-control" id="movie_hall_map" name="movie_hall_map" placeholder="Enter Movie Hall Map" required="required" value="<?php echo $value['map'];?>">
               </div> -->
              <div class="box-footer">
                <button type="submit" class="btn btn-primary" name="update_hall">Submit</button>
              </div>
            </form>
         <?php }?>
          </div>
      </form>

      