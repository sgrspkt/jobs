<?php
require_once('connection.class.php');

class RecentKumariJobs extends Connection{
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

	public function addRecentKumariJobs()
	{
		$con = new Connection();
		$db = $con->openConnection();
		include_once('admin/plugins/htmldom/simple_html_dom.php');


// Create DOM from URL or file
		$html = file_get_html('https://www.kumarijob.com/');
		$base_url = 'http://kumarijob.com/';

		$page = [];
		$i=0;
		foreach ($selector = $html->find('div #recent_jobs .container-fluid .row .col-sm-9 .row .col-sm-6') as $job) {

			//inner loop
			foreach ($job as $value) {
				# code...
				//title of job
				$jobTitle = $job->find('.hot-job-sec-blk-recent .hot-job-blk-cnt h1 a',0);
				$title = $jobTitle->innertext;

				//company of job
				$jobCompany = $job->find('.hot-job-sec-blk-recent .hot-job-blk-cnt a',1);
				$company = $jobCompany->innertext;

				//full time or part time
				$jobTime = $job->find('.hot-job-sec-blk-recent .hot-job-blk-cnt span',1);
				$time = $jobTime->innertext;
			//remove white space at beginning
				$time = ltrim($time);

			//url of job
				$jobUrl = $job->find('.hot-job-sec-blk-recent .hot-job-blk-cnt a',1);
				$url = $jobUrl->href;

				//days left - deadline
				$jobDeadline = $job->find('.hot-job-sec-blk-recent .hot-job-blk-cnt ul li',0);
				$deadline = $jobDeadline->innertext;
			}
			$jobs[] = [
				'title' => $title,
				'company' => $company,
				'time' => $time,
				'deadline' => $deadline,
				'url' => $url
			];

				//first index of scrapped data to check with database first index
			$scrapped_title = $jobs[0]['title'];
			$scrapped_company = $jobs[0]['company'];

				//get data from database
			$newdata = $db->query("SELECT * FROM tbl_kumarijob where category = 'recent'");
			$checkDataAvailable = $newdata->fetchAll();

				//first index of database
			$db_title = $checkDataAvailable[0]['title'];
			$db_company = $checkDataAvailable[0]['company'];

			if(($scrapped_company == $db_company) && ($scrapped_title == $db_title)){

				//die('data uptodate');

			}else{
				$sql = $db->prepare("INSERT INTO tbl_kumarijob(`category`,`title`,`url`,`logo`,`company`,`deadline`,`time`) VALUES ('recent','".$jobs[$i]['title']."','".$jobs[$i]['url']."',' ','".$jobs[$i]['company']."','".$jobs[$i]['deadline']."','".$jobs[$i]['time']."')");

                        // inserting a record
				$insert = $sql->execute();
                        //return $insert;
			}
			$i++;
		}

	}


	public function viewRecentKumariJobs(){
		$con = new Connection();
		$db = $con->openConnection();

		$data = $db->query("SELECT * FROM tbl_kumarijob where category='recent'");
		$jobs = $data->fetchAll();
		return $jobs;
	}
}
