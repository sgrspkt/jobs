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
                 
                </tr>
                 <?php
}
}
                ?>
               
              </table>
            </div>