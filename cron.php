<?php
require_once('admin/model/connection.class.php');
require_once('admin/model/recentjobsnepal.class.php');
//require_once('admin/model/hotjobsnepal.class.php');
require_once('admin/model/recentmerojobs.class.php');
//require_once('admin/model/recentmerocareer.class.php');
require_once('admin/model/recentkumarijobs.class.php');
require_once('admin/model/hotkumarijobs.class.php');
require_once('admin/model/hotramrojobs.class.php');
require_once('admin/model/recentramrojobs.class.php');
//require_once('admin/model/jobsnepal.class.php')
?>
<?php

$recentramroObj = new RecentRamroJobs();
$viewrecentramrojob = $recentramroObj->addRecentRamroJobs();

	$hotramroObj = new HotRamroJobs();
	$viewhotramrojob = $hotramroObj->addHotRamroJobs();

	//$meroObj = new RecentKumariJobs();
	//$viewrecentjob = $meroObj->addRecentKumariJobs();

	//$hotKumariObj = new HotKumariJobs();
	//$viewhotkumarijob = $hotKumariObj->addHotKumariJobs();

	/*$meroObj = new RecentMeroCareer();
	$viewrecentjob = $meroObj->addMeroCareer();*/

	/*$viewobj=new RecentJobsNepal();
	
	$viewrecentjob=$viewobj->addJobsNepal();*/

/*	$viewobj=new HotJobsNepal();
	
	$viewhotjob=$viewobj->addJobsNepal();

*/
//var_dump($views);
	echo "Data Updated";
	?>
	