<?php
$page = isset($_GET['page']) ? $_GET['page'] : '';

$action = isset($_GET['action']) ? $_GET['action'] : '';


switch($page){
	
	/*admin section */

case 'admin':
if($action == 'add'){
	
$page_to_load = "views/add_admin.php";
break;
}
else if($action == 'view'){
$page_to_load= "views/view_admin.php";
break;
}else if ($action=='delete'){
	$page_to_load="controller/process_admin.php";
	break;
}
	else if($action=='update'){
		$page_to_load="views/update_admin.php";
	break;
	}
default:
{
	$page_to_load="dashboard.php";
}

/*jobs section */

case 'jobsPortal':
if($action == 'add'){
	
$page_to_load = "views/add_jobsPortal.php";
break;
}
else if($action == 'view'){
$page_to_load= "views/view_jobsPortal.php";
break;
}else if ($action=='delete'){
	$page_to_load="controller/process_jobsPortal.php";
	break;
}
	else if($action=='update'){
		$page_to_load="views/update_jobsPortal.php";
	break;
	}
default:
{
	$page_to_load="dashboard.php";
}

/*jobs nepal */

case 'jobsnepal':
if($action == 'recentview'){
$page_to_load= "views/view_recentjobsNepal.php";
break;
}else if ($action=='hotview'){
	$page_to_load="views/view_hotjobsNepal.php";
	break;
}
	else if($action=='update'){
		$page_to_load="views/update_jobsPortal.php";
	break;
	}
default:
{
	$page_to_load="dashboard.php";
}	

/*Mero Career*/
case 'merocareer':
if($action == 'recentview'){
$page_to_load= "views/view_recentmeroCareer.php";
break;
}else if ($action=='hotview'){
	$page_to_load="views/view_hotmeroCareer.php";
	break;
}
	else if($action=='update'){
		$page_to_load="views/update_meroCareer.php";
	break;
	}
default:
{
	$page_to_load="dashboard.php";
}	

/*Kumari Job*/
case 'kumarijob':
if($action == 'recentview'){
$page_to_load= "views/view_recentKumariJob.php";
break;
}else if ($action=='hotview'){
	$page_to_load="views/view_hotKumariJob.php";
	break;
}
	else if($action=='update'){
		$page_to_load="views/update_KumariJob.php";
	break;
	}
default:
{
	$page_to_load="dashboard.php";
}	

/*Ramro Job*/
case 'ramrojob':
if($action == 'recentview'){
$page_to_load= "views/view_recentRamroJob.php";
break;
}else if ($action=='hotview'){
	$page_to_load="views/view_hotRamroJob.php";
	break;
}
	else if($action=='update'){
		$page_to_load="views/update_RamroJob.php";
	break;
	}
default:
{
	$page_to_load="dashboard.php";
}	



}
?>