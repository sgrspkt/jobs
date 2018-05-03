 <?php

require_once('model/connection.class.php');
require_once('model/admin.class.php');
$viewobj=new Admin();
$views=$viewobj->viewAdmin();
/*echo '<pre>';
var_dump($views);
echo '<pre>';*/
?>
 
           <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                   <th>Admin Id</th>
                  <th>Email</th>
                  <th>Password</th>
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
                  <td><?php echo $value['email'];?> </td>
                  <td><?php echo $value['password'];?> </td>
                  <td>
                  <a href="index.php?page=admin&action=update&admin_id=<?php echo $value['id'];?>">
                  <button type="button" class="btn btn-block btn-primary">Update</button>

                  <!--  <a onClick="return confirm('Are you sure you want to delete')" href="index.php?page=hall&action=delete&hall_id=<?php echo $value['hall_id'];?>">
                                    <button type="button" class="btn btn-block btn-danger">Delete</button></a> -->
                  </td>
                </tr>
                 <?php
}
}
                ?>
               
              </table>
            </div>