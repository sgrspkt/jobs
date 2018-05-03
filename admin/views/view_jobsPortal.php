 <?php

require_once('model/connection.class.php');
require_once('model/jobsportal.class.php');
$viewobj=new JobsPortals();
$views=$viewobj->viewJobPortals();
/*echo '<pre>';
print_r($views);
die();*/
?>
 
           <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                   <th>Jobs Portal Id</th>
                  <th>Jobs Portal Name</th>
                  <th>Jobs Portal Location</th>
                  <th>Jobs Portal Description</th>
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
                  <?php

  if(sizeof($views>0)){
    
  foreach($views as $value){

    ?>
                <tr>
                 <td><?php echo $value['id'];?></td>
                  <td><?php echo $value['name'];?> </td>
                  <td><?php echo $value['location'];?> </td>
                  <td><?php echo $value['description'];?> </td>
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