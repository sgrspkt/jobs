<?php
require_once('connection.class.php');

class HotKumariJobs extends Connection{
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
	
		//--------------------------- Add hot kumari jobs-------------------------//

	public function addHotKumariJobs()
	{
		$con = new Connection();
		$db = $con->openConnection();
		include_once('admin/plugins/htmldom/simple_html_dom.php');


// Create DOM from URL or file
		$html = file_get_html('https://www.kumarijob.com/');
		$base_url = 'http://kumarijob.com/';

		$page = [];
		$i=0;
		/*echo $selector = $html->find('div #hot_jobs .container-fluid .row .col-sm-9',0);
		die();*/
		
		foreach ($selector = $html->find('div #hot_jobs .container-fluid .row .col-sm-12 .row .col-md-4') as $job) {

//var_dump($job);
			//inner loop
			foreach ($job as $value) {
				//logo of company
				$jobLogo = $job->find('.hot-job-sec-blk-hot .hot-jobs-img img',0);
				$logo = $jobLogo->src;

				//title of job
				$jobCompany = $job->find('.hot-job-sec-blk-hot .hot-job-blk-cnt h1 a',0);
				$company = $jobCompany->innertext;

				//company of job
				$jobTitle = $job->find('.hot-job-sec-blk-hot .hot-job-blk-cnt a',1);
				$title = $jobTitle->innertext;

			//url of job
				$jobUrl = $job->find('.hot-job-sec-blk-hot .hot-job-blk-cnt a',1);
				$url = $jobUrl->href;
				
			}
			$jobs[] = [
				'title' => $title,
				'company' => $company,
				'url' => $url,
				'logo' => $logo
			];
				//first index of scrapped data to check with database first index
			$scrapped_title = $jobs[0]['title'];
			$scrapped_company = $jobs[0]['company'];

				//get data from database
			$newdata = $db->query("SELECT * FROM tbl_kumarijob where category = 'hot'");
			$checkDataAvailable = $newdata->fetchAll();

				//first index of database
			$db_title = $checkDataAvailable[0]['title'];
			$db_company = $checkDataAvailable[0]['company'];

			if(($scrapped_company == $db_company) && ($scrapped_title == $db_title)){
				
				//die('data uptodate');

			}else{
				$sql = $db->prepare("INSERT INTO tbl_kumarijob(`category`,`title`,`url`,`logo`,`company`,`deadline`,`time`) VALUES ('hot','".$jobs[$i]['title']."','".$jobs[$i]['url']."','".$jobs[$i]['logo']." ','".$jobs[$i]['company']."',' ',' ')");

                        // inserting a record
				$insert = $sql->execute();
                        //return $insert;
			}
			
			$i++;
		}
		
	}


	public function viewHotKumariJobs(){
		$con = new Connection();
		$db = $con->openConnection();

		$data = $db->query("SELECT * FROM tbl_kumarijob where category='hot'");
		$jobs = $data->fetchAll();
		return $jobs;
	}
}
