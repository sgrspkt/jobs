<?php
require_once('connection.class.php');

class HotRamroJobs extends Connection{
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

	public function addHotRamroJobs()
	{
		$con = new Connection();
		$db = $con->openConnection();
		include_once('admin/plugins/htmldom/simple_html_dom.php');


// Create DOM from URL or file
		$html = file_get_html('https://www.ramrojob.com/');
		$base_url = 'https://www.ramrojob.com/';

		$page = [];
		$i=0;
		$topselector = $html->find('div .bordered',3);
		//echo $selector; die();
		foreach ($selector = $topselector->find('div .col-sm-4') as $job) {
			
			//inner loop
			foreach ($job as $value) {
				# code...
				//logo of job
				$jobCompany = $job->find('h5',0);
				$company = $jobCompany->innertext;

				//title of job
				$jobLogo = $job->find('img',0);
				$logo = $jobLogo->src;

				//logo of job
				$jobUrl = $job->find('ul li a',0);
				$url = $jobUrl->href;

				//company of job
				$jobTitle = $job->find('ul li a',0);
				$title = $jobTitle->innertext;

				
			}
			$jobs[] = [
				'title' => $title,
				'company' => $company,
				'logo' => $logo,
				'url' => $url
			];
				//first index of scrapped data to check with database first index
			$scrapped_title = $jobs[0]['title'];
			$scrapped_company = $jobs[0]['company'];

				//get data from database
			$newdata = $db->query("SELECT * FROM tbl_ramrojob where category = 'hot'");
			$checkDataAvailable = $newdata->fetchAll();

				//first index of database
			$db_title = $checkDataAvailable[0]['title'];
			$db_company = $checkDataAvailable[0]['company'];


			if(($scrapped_company == $db_company) && ($scrapped_title == $db_title)){

				//die('data uptodate');

			}else{
				//die('need to insert');
				
				$sql = $db->prepare("INSERT INTO tbl_ramrojob(`category`,`title`,`url`,`logo`,`company`,`deadline`) VALUES ('hot','".$jobs[$i]['title']."','".$jobs[$i]['url']."','".$jobs[$i]['logo']."','".$jobs[$i]['company']."','')");

                        // inserting a record
				$insert = $sql->execute();
                        //return $insert;

			}


			$i++;
		}
		/*echo '<pre>';
		print_r($jobs);*/


	}


	public function viewHotRamroJobs(){
		$con = new Connection();
		$db = $con->openConnection();

		$data = $db->query("SELECT * FROM tbl_ramrojob where category='hot'");
		$jobs = $data->fetchAll();
		return $jobs;
	}
}
