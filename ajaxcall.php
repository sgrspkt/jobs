<?php
if(isset( $_POST['jobsnepaljobtype'] )) {
	require_once 'admin/model/hotjobsnepal.class.php';
	$jobsNepal = new HotJobsNepal();
	$result = $jobsNepal->viewHotJobsNepal();
	echo json_encode($result);


}
if(isset( $_POST['kumarijobtype'] )) {
	require_once 'admin/model/hotkumarijobs.class.php';
	$kumariJobs = new HotKumariJobs();
	$result = $kumariJobs->viewHotKumariJobs();
	echo json_encode($result);

}
if(isset( $_POST['recentkumarijobtype'] )) {
	require_once 'admin/model/recentkumarijobs.class.php';
	$kumariJobs = new RecentKumariJobs();
	$result = $kumariJobs->viewRecentKumariJobs();
	echo json_encode($result);

}
if(isset( $_POST['ramrojobtype'] )) {

	require_once 'admin/model/hotramrojobs.class.php';
	$ramroJobs = new HotRamroJobs();
	$result = $ramroJobs->viewHotRamroJobs();
	echo json_encode($result);

}
if(isset( $_POST['recentramrojobtype'] )) {

	require_once 'admin/model/recentramrojobs.class.php';
	$ramroJobs = new RecentRamroJobs();
	$result = $ramroJobs->viewRecentRamroJobs();
	echo json_encode($result);

}
if(isset( $_POST['jobsnepalrecent'] )) {
	require_once('admin/model/recentjobsnepal.class.php');
	$jobsNepal = new RecentJobsNepal();
	$result = $jobsNepal->viewRecentJobsNepal();
	echo json_encode($result);

}
if(isset( $_POST['merocareertyperecent'] )) {
	require_once('admin/model/recentmerocareer.class.php');
	$recentMeroCareerObj = new RecentMeroCareer();
	$result = $recentMeroCareerObj->viewRecentMeroCareer();
	echo json_encode($result);

}
?>