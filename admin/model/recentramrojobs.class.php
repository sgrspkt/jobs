<?php
require_once('connection.class.php');

class RecentRamroJobs extends Connection{
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

	public function addRecentRamroJobs()
	{
		$con = new Connection();
		$db = $con->openConnection();
		include_once('admin/plugins/htmldom/simple_html_dom.php');


// Create DOM from URL or file
		$html = file_get_html('https://www.ramrojob.com/');
		$base_url = 'https://www.ramrojob.com/';

		$page = [];
		$i=0;
		$topselector = $html->find('div .bordered',4);
		
		foreach ($selector = $topselector->find('table tbody tr') as $job) {

				//url of job
			$jobUrl = $job->find('a',0);
			if($jobUrl == NULL){
				$firstUrl = $job->find('th',1);
				$url = $firstUrl->innertext;
			}else{
				$url = $jobUrl->href;
			}
			
				//title of job
			$jobTitle = $job->find('a',0);
			if($jobTitle == NULL){
				$firstTitle = $job->find('th',1);
				$title = $firstTitle->innertext;
			}else{
				$title = $jobTitle->innertext;
			}


				//company of job
			$jobCompany = $job->find('td',1);
			if($jobCompany == NULL){
				$firstCompany = $job->find('th',2);
				$company = $firstCompany->innertext;
			}else{
				$company = $jobCompany->innertext;
			}

				//deadline of job
			$jobDeadline = $job->find('td',2);
			if($jobDeadline == NULL){
				$firstDeadline = $job->find('th',3);
				$deadline = $firstDeadline->innertext;
			}else{
				$deadline = $jobDeadline->innertext;
				$deadline = ltrim($deadline);
			}
			
			$jobs[] = [
				'title' => $title,
				'company' => $company,
				'deadline' => $deadline,
				'url' => $url
			];
			//echo $i;

			$i++;	
		}
		$i = $i-1;

		for ($x=0; $x < $i; $x++) { 
			$scrapped_title = $jobs[1]['title'];
			$scrapped_company = $jobs[1]['company'];
			
			//get data from database
			$newdata = $db->query("SELECT * FROM tbl_ramrojob where category = 'recent'");
			$checkDataAvailable = $newdata->fetchAll();

				//first index of database
			$db_title = $checkDataAvailable[1]['title'];
			$db_company = $checkDataAvailable[1]['company'];

			if(($scrapped_company == $db_company) && ($scrapped_title == $db_title)){

				//die('data uptodate');

			}else{
				//die('need to insert');
				$sql = $db->prepare("INSERT INTO tbl_ramrojob(`category`,`title`,`url`,`logo`,`company`,`deadline`) VALUES ('recent','".$jobs[$x]['title']."','".$jobs[$x]['url']."',' ','".$jobs[$x]['company']."','".$jobs[$x]['deadline']."')");

                        // inserting a record
				$insert = $sql->execute();
				
			}
			
		}
	}
	
	
	public function viewRecentRamroJobs(){
		$con = new Connection();
		$db = $con->openConnection();

		$data = $db->query("SELECT * FROM tbl_ramrojob where category='recent'");
		$jobs = $data->fetchAll();
		return $jobs;
	}
}
