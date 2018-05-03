<?php
require_once('connection.class.php');

class HotJobsNepal extends Connection{
	private $jobs_id;
	private $jobtype_id;
	private $portal_id;
	private $jobs_title;
	private $company_logo;
	private $jobs_desc;
	private $jobs_type;
	private $jobs_url;
	private $jobs_deadline;

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

	public function addJobsNepal()
	{
		$con = new Connection();
		$db = $con->openConnection();
		include_once('admin/plugins/htmldom/simple_html_dom.php');
// Create DOM from URL or file
		$main = file_get_html('http://www.jobsnepal.com/hot-jobs');
		$page = [];
		foreach ($pagination = $main->find('div #pagination') as $page) {
			$page0 = $page->find('a',0);
			$pageLink0 = $page0->href;

			$page1 = $page->find('a',1);
			$pageLink1 = $page1->href;
			$page = [
				'link0' => $pageLink0,
				'link1' => $pageLink1
			];
			//count the number of pagination
			$arrayCount = count($page);
			//var_dump($arrayCount); die();
			for($b=0; $b<$arrayCount; $b++){
				//echo $b;
				$finalLink = $page['link'.$b];
				$html = file_get_html($finalLink);
				// creating an array of elements
				$jobs = [];
				// Find all jobs
				foreach ($selector = $html->find('div #main-content .job-listing table tbody tr') as $job) {
				//job title
					$jobDetail = $job->find('a',0);
					$jobTitle = $jobDetail->innertext;

					$jobUrl = $job->find('a',0);
					$jobUrl = $jobUrl->href;

					//job company name
					$jobCompanys = $job->find('a',1);
					$jobCompany = $jobCompanys->innertext;

					//full time or part time
					$jobTypes = $job->find('.center',0);
					$jobType = $jobTypes->innertext;

					// $jobDeadlines = $job->find('.center > span',0);
					// $jobDeadline = $jobDeadlines->innertext;


					$jobs[] = [
						'title' => $jobTitle,
						'company' => $jobCompany,
						'type' => $jobType,
						'url' => $jobUrl
						//'deadline' => $jobDeadline
					];
					$scrapped_data = $jobs[1]['title'];

				}
				$data = $db->query("SELECT COUNT(*) FROM tbl_jobs where job_category='hot' && portal_id='1'");
				$countData = $data->fetchAll();
				if($countData){
					$newdata = $db->query("SELECT * FROM tbl_jobs");
					$checkDataAvailable = $newdata->fetchAll();
					$db_title = $checkDataAvailable[1]['jobs_title'];
				}
 				// echo '<pre>';
 				// var_dump($checkDataAvailable); 
				if(!($countData[0]['COUNT(*)'] == 102) && ($scrapped_data == $db_title)){
 					//die('102 records found');

 				//var_dump($scrapped_data);

					foreach ($jobs as $value) {

						$sql = $db->prepare("INSERT INTO tbl_jobs(`job_category`,`portal_id`,`jobs_title`,`jobs_type`) VALUES ('hot','1','".$value['title'].",'".$value['type']."')");

    // inserting a record
						$insert = $sql->execute();
 //return $insert;
					}
				}
			}

		}


	}

	public function viewHotJobsNepal(){
		$con = new Connection();
		$db = $con->openConnection();
		
		$data = $db->query("SELECT * FROM tbl_jobs where job_category='hot' && portal_id='1'");
		$jobs = $data->fetchAll();
		return $jobs;
	}
}
