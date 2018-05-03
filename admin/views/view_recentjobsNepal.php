 <?php

 require_once('model/connection.class.php');
 require_once('model/recentjobsnepal.class.php');
 $viewobj=new RecentJobsNepal();
 $views=$viewobj->viewRecentJobsNepal();
/*echo '<pre>';
print_r($views);
die();*/
?>

<div class="box-body">
  <table id="example1" class="table table-bordered table-striped">
    <thead>
      <tr>
       <th>SN</th>
       <th>Job Category</th>
       <th>Jobs Title</th>
       <th>Jobs Type</th>
     </tr>
   </thead>
   <tbody>
    <?php

    if(sizeof($views>0)){
    //scrapped title
      $nullRow = [1,22,43,64,85,106,127,148,169,190,211];
      $i=0;
      foreach($views as $value){
        $i++;
        ?>
        <tr>
          <?php if (in_array($i, $nullRow)) {
            echo '<td>&nbsp</td>';
          }else{?>
          <td><?php echo $i;?></td>
          <td><?php echo $value['job_category'];?> </td>
          <td><?php echo $value['jobs_title'];?> </td>
          <td><?php if($value['jobs_type']){ echo $value['jobs_type'];}else{ echo ' ';}?> </td>
         <!--  <td>
           <a href="index.php?page=jobsPortal&action=update&jobsPortal_id=<?php echo $value['id'];?>">
             <button type="button" class="btn btn-block btn-primary">Update</button>
         
             <a onClick="return confirm('Are you sure you want to delete')" href="index.php?page=jobsPortal&action=delete&hall_id=<?php echo $value['id'];?>">
               <button type="button" class="btn btn-block btn-danger">Delete</button></a>
             </td> -->
            </tr>
            <?php
          }
        }
      }
      ?>
      <tfoot>
        <tr>
          <th>SN</th>
          <th>Job Category</th>
          <th>Jobs Title</th>
          <th>Jobs Type</th>
        </tr>
      </tfoot>
    </table>
  </div>