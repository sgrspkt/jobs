<?php
session_start();
require_once('../model/connection.class.php');
require_once('../model/admin.class.php');
require_once('../model/locate.class.php');

$conObj = new Connection();
$objValidate=new admin();

$email=$_POST['email'];
$password=$_POST['password'];
$password=md5($password);
$objValidate->setEmail($email);
$objValidate->setPassword($password);
$view= $objValidate->validateAdmin();
$loadminObj = new Locate();
/*echo '<pre>';
print_r($view);*/
if(!empty($view)){
	$_SESSION['email'] = $email;
	$loadminObj->getLocation('../index.php?email='.$email);
	
}else{
	$loadminObj->getLocation('../login.php?err=incorrect-credentials');
}
?>