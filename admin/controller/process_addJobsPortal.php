<?php 

session_start();
require_once('../model/connection.class.php');
require_once('../model/jobsportal.class.php');
//$con = new connection();
$jobPortals=new JobsPortals();

if(isset($_POST['add_job_portal'])){
$jobPortals_name = $_POST['jobs_portal_name'];
$jobPortals_location = $_POST['jobs_portal_location'];
$jobPortals_description = $_POST['jobs_portal_description'];

}

$jobPortals->setJobsPortalName($jobPortals_name);
$jobPortals->setjobsPortallocation($jobPortals_location);
$jobPortals->setjobsPortalDescription($jobPortals_description);

$flag=$jobPortals->addJobsPortal();

if($flag){
	$_SESSION['jobsPortal_added'] = true;
		$_SESSION['jobs_added_msg']=$addaboutObj->success="The jobPortals successfully added";
		header('location:../index.php?page=jobPortals&action=view');
	}
else{
	die('not added');
	echo "not added";
	
	}

?>

