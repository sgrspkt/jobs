<?php
require_once('connection.class.php');

class RecentMeroJobs extends Connection{
	private $jobs_id;
	private $jobtype_id;
	private $portal_id;
	private $jobs_title;
	private $company_logo;
	private $jobs_desc;
	private $jobs_type;
	private $jobs_url;
	private $jobs_deadline;

		/*public function __construct(){
		parent:: __construct();
	}*/
	
	public function setJobsId($jd=''){
		$this->jobs_id=$jd;
	}
	
	public function setJobsTypeId($je=''){
		$this->jobtype_id=$je;
	}
	public function setPortalId($hn=''){
		$this->portal_id=$hn;
	}
	public function setJobsTitle($mp=''){
		$this->jobs_title=$mp;
	}
	public function setCompanyLogo($mp=''){
		$this->company_logo=$mp;
	}
	public function setJobsDesc($mp=''){
		$this->jobs_desc=$mp;
	}
	public function setJobsType($jp=''){
		$this->jobs_type=$jp;
	}
	public function setJobsUrl($jl=''){
		$this->jobs_url=$jl;
	}
	public function setJobsDeadline($de=''){
		$this->jobs_deadline=$de;
	}
	
		//--------------------------- Add recent jobs Nepal-------------------------//

	public function addMeroJobs()
	{
		
		$con = new Connection();
		$db = $con->openConnection();
		include_once('admin/plugins/htmldom/simple_html_dom.php');


// Create DOM from URL or file
		$html = file_get_html('https://merojob.com/');
		$base_url = 'https://merojob.com';

		$page = [];
$container= $html->find('.container',4);
$selector = $container->find('.row .col-md-9 .row',0);
$selector1 = $selector->find('.col-md-12',0);
$selector2 = $selector1->find('.card',0);

var_dump($selector2);
die(); 
//.jobs .col-md-12 section .mt-3 div .card .card-block .hj-row
		foreach ($selector = $html->find('.container',0)->children(6) as $job) {
			die('entered');
			foreach ($job as $value) {
				$imageDetail = $value->find('.job-card .p-2 img',0);
				$image = $imageDetail->src;

			}
					
					$jobs[] = [
						'img' => $image
					];
					var_dump($jobs);

				}

	}

	public function viewRecentJobsNepal(){
		$con = new Connection();
		$db = $con->openConnection();
		
		$data = $db->query("SELECT * FROM tbl_jobs where job_category='recent' && portal_id='1'");
		$jobs = $data->fetchAll();
		return $jobs;
	}
}
