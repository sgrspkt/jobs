<?php
require_once('model/connection.class.php');
require_once('model/jobsPortal.class.php');
?>
<?php
$jobs_portal_id=isset($_GET['jobsPortal_id'])?(int)$_GET['jobsPortal_id']:'';
$updateObj=new JobsPortals();
$updateObj->setJobsPortalId($jobs_portal_id);
$jobsPortals=$updateObj->viewJobPortals();
?>

<script type="text/javascript" src="plugins/jQuery/jQuery-2.2.0.min.js"></script>
<script src="js/jquery-1.9.1.min.js"></script>
        <script src="js/bootstrap-datepicker.js"></script>
        <script type="text/javascript" src="js/custom.js"></script>
<form name="add_jobsPortal" method="post" action="controller/process_update_jobsPortal.php">
<div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Add Jobs Portal</h3>
            </div>
            <?php
            foreach($jobsPortals as $value){
             /* echo '<pre>';
  var_dump($value);
  die();*/

?>
            <form name="add_jobs_portal" method="post" action="controller/process_update_jobsPortal.php">
              <div class="box-body">
                <div class="form-group">
                  <label for="jobsportalname">Movie jobsPortal Name</label>
                  <input type="text" class="form-control" id="jobsPortal_name" name="jobsPortal_name" placeholder="Enter Movie jobsPortal Name" required="required" value="<?php echo $value['name'];?>">
                </div>
                <div class="form-group">
                  <label for="jobsportallocation">Movie jobsPortal Location</label>
                  <input type="text" class="form-control" id="jobsPortal_location" name="jobsPortal_location" placeholder="Enter Movie jobsPortal Location" required="required" value="<?php echo $value['location'];?>">
                </div>
                <div class="form-group">
                  <label for="categoryname">Movie jobsPortal Description</label>
                  <input type="text" class="form-control" id="jobsPortal_description" name="jobsPortal_description" placeholder="Enter Movie jobsPortal Map" required="required" value="<?php echo $value['description'];?>">
                  <input type="hidden" name="id" value="<?php echo $value['id'];?>"/>
                </div>
              <div class="box-footer">
                <button type="submit" class="btn btn-primary" name="update_jobsPortal">Submit</button>
              </div>
            </form>
         <?php }?>
          </div>
      </form>

      