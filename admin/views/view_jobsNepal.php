 <?php

require_once('model/connection.class.php');
require_once('model/jobs.class.php');
$viewobj=new Jobs();
$views=$viewobj->viewJobs();
/*echo '<pre>';
print_r($views);
die();*/
?>
 
           <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                   <th>Jobs Id</th>
                   <th>Jobtype Id</th>
                   <th>Portal Id</th>
                  <th>Jobs Title</th>
                  <th>Jobs Url</th>
                  <th>Company Logo</th>
                  <th>Jobs Description</th>
                  <th>Jobs Type</th>
                  <th>Jobs Deadline</th>
                  <th>Company Logo</th>
                </tr>
                </thead>
                <tbody>
                  <?php

  if(sizeof($views>0)){
    
  foreach($views as $value){

    ?>
                <tr>
                 <td><?php echo $value['jobs_id'];?></td>
                  <td><?php echo $value['jobtype_id'];?> </td>
                  <td><?php echo $value['portal_id'];?> </td>
                  <td><?php echo $value['jobs_title'];?> </td>
                  <td><?php echo $value['jobs_url'];?> </td>
                  <td><?php echo $value['company_logo'];?> </td>
                  <td><?php echo $value['jobs_desc'];?> </td>
                  <td><?php echo $value['jobs_type'];?> </td>
                  <td><?php echo $value['jobs_deadline'];?> </td>
                  <td>
                  <a href="index.php?page=jobsPortal&action=update&jobsPortal_id=<?php echo $value['id'];?>">
                  <button type="button" class="btn btn-block btn-primary">Update</button>

                   <a onClick="return confirm('Are you sure you want to delete')" href="index.php?page=jobsPortal&action=delete&hall_id=<?php echo $value['id'];?>">
                  <button type="button" class="btn btn-block btn-danger">Delete</button></a>
                  </td>
                </tr>
                 <?php
}
}
                ?>
               <tfoot>
                <tr>
                  <th>Hall Id</th>
                  <th>Hall Name</th>
                  <th>Hall Location</th>
                  <th>Hall Map</th>
                  <th>Action</th>
                </tr>
                </tfoot>
              </table>
            </div>