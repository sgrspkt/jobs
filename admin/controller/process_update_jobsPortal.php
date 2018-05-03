<?php
session_start();
require_once('../model/connection.class.php');
require_once('../model/jobsportal.class.php');
require_once('../model/locate.class.php');
?>
<?php
if(isset($_POST['update_jobsPortal'])){
	echo '<pre>';
	var_dump($_POST);
	die();
$jobs_portal_id= $_POST['id'];
$jobPortals_name = $_POST['jobs_portal_name'];
$jobPortals_location = $_POST['jobs_portal_location'];
$jobPortals_description = $_POST['jobs_portal_description'];

}

$updateJobsPortalObj = new JobsPortal();
$updateJobsPortalObj->setJobsPortalId($jobs_portal_id);

$jobPortals->setJobsPortalName($jobPortals_name);
$jobPortals->setjobsPortallocation($jobPortals_location);
$jobPortals->setjobsPortalDescription($jobPortals_description);

$flag=$updateJobsPortalObj->updateJobsPortal();
$lohallObj = new Locate();

if($flag){
	$_SESSION['update_hall'] = true;
	$_SESSION['update_hall_msg']="The jobs Portals successfully updated";
$lohallObj->getLocation('../index.php?page=jobsPortal&action=view');
	
}else
{
	$_SESSION['update_not_hall'] = true;
	$_SESSION['update_not_hall_msg']="The jobs portals couldn't be updated";
$locateObj->getLocation('../index.php?page=jobsPortal&action=view');
	}

?>