 <?php

 require_once('model/connection.class.php');
 require_once('model/recentkumarijobs.class.php');
 $viewobj=new RecentKumariJobs();
 $views=$viewobj->viewRecentKumariJobs();
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
       <th>Jobs Time</th>
       <th>Jobs Deadline</th>
     </tr>
   </thead>
   <tbody>
    <?php

    if(sizeof($views>0)){
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
         <td><?php echo $value['time'];?> </td>
         <td><?php echo $value['deadline'];?> </td>
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
          <th>Jobs Time</th>
          <th>Jobs Deadline</th>
        </tr>
      </tfoot>
    </table>
  </div>