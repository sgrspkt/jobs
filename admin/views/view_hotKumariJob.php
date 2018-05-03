 <?php

 require_once('model/connection.class.php');
 require_once('model/hotkumarijobs.class.php');
 $viewobj=new HotKumariJobs();
 $views=$viewobj->viewHotKumariJobs();
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
       <th>Jobs Company</th>
       <th>Jobs Title</th>
       <th>Jobs Url</th>
       <th>Logo</th>
     </tr>
   </thead>
   <tbody>
    <?php

    if(sizeof($views>0)){
    //scrapped title
    //$nullRow = [1,22,43,64,85,106,127,148,169,190,211];
      $i=0;
      foreach($views as $value){
        $i++;
        ?>
        <tr>
         <td><?php echo $i;?></td>
         <td><?php echo $value['category'];?> </td>
         <td><?php echo $value['company'];?> </td>
         <td><?php echo $value['title'];?> </td>
         <td><?php echo $value['url'];?> </td>
         <td><img src="<?php echo $value['logo'];?>"/> </td>
     
         
         <!-- <td>
          <a href="index.php?page=jobsPortal&action=update&jobsPortal_id=<?php echo $value['id'];?>">
            <button type="button" class="btn btn-block btn-primary">Update</button>
         
            <a onClick="return confirm('Are you sure you want to delete')" href="index.php?page=jobsPortal&action=delete&hall_id=<?php echo $value['id'];?>">
              <button type="button" class="btn btn-block btn-danger">Delete</button></a>
            </td> -->
          </tr>
          <?php
          
        }
      }
      ?>
      <tfoot>
        <tr>
          <th>SN</th>
       <th>Job Category</th>
       <th>Jobs Company</th>
       <th>Jobs Title</th>
       <th>Jobs Url</th>
       <th>Logo</th>
        </tr>
      </tfoot>
    </table>
  </div>