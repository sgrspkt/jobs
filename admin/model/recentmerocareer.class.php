<?php
require_once('connection.class.php');

class RecentMeroCareer extends Connection{
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

	public function addMeroCareer()
	{
		$con = new Connection();
		$db = $con->openConnection();
		include_once('admin/plugins/htmldom/simple_html_dom.php');


// Create DOM from URL or file
		$main = file_get_html('http://merocareer.com/mod-latest_jobs.html');
		$base_url = 'http://merocareer.com/';

		$page = [];
		$foo = [];
		foreach ($pagination = $main->find('.container .row .col-md-8 .page-wrap .pagination li') as $page) {
			
			$page0 = $page->find('a',0);
			$pageLink0 = $page0->href;
			$page = [
				'link0' => $pageLink0?$pageLink0:'mod-latest_jobs.html'
			];
			//push to new array foo
			array_push($foo,$page);
		}
		$baz = [];
		foreach ($foo as $bar) {
			array_push($baz,$bar['link0']);
		}
		//get unique pagination url from repeated
		$unique = array_unique($baz);
		//ignoring the first url which is same to another
		array_shift($unique);
		//count the number of unique urls
		$arrayCount = count($unique);

		for($b=0; $b<$arrayCount; $b++){
			$finalLink = $unique[$b];
			$html = file_get_html($base_url.$finalLink);
			
// creating an array of elements
			$jobs = [];
			$i=0;
			foreach ($selector = $html->find('div .container .row .col-md-8 .page-wrap .job-wrap') as $job) {
				$jobTitle = $job->find(".row .col-sm-8 a", 0);
				$title = $jobTitle->innertext;

				//get link of url
				$jobUrl = $job->find(".row .col-sm-8 a", 0);
				$url = $jobUrl->href;

				//get description of job
				$jobDesc = $job->find(".row .col-sm-8 .results-job-description", 0);
				$description = $jobDesc->innertext;

				//company name
				$jobCompany = $job->find(".row .col-sm-4 a", 1);
				$company = $jobCompany->innertext;

				$jobs[] = [
					'title' => $title,
					'url' => $url,
					'desc' => $description,
					'company' => $company

				];
				//first index of scrapped data to check with database first index
				$scrapped_title = $jobs[0]['title'];
				$scrapped_company = $jobs[0]['company'];

				//get data from database
				$newdata = $db->query("SELECT * FROM tbl_merocareer");
				$checkDataAvailable = $newdata->fetchAll();

				//first index of database
				$db_title = $checkDataAvailable[0]['title'];
				$db_company = $checkDataAvailable[0]['company'];

				if(($scrapped_company == $db_company) && ($scrapped_title == $db_title)){
 					
					//die('data uptodate');

				}else{

					     //insert data becase table is empty
					$sql = $db->prepare("INSERT INTO tbl_merocareer(`category`,`title`,`url`,`description`,`company`) VALUES ('recent','".$jobs[$i]['title']."','".$jobs[$i]['url']."','".$jobs[$i]['desc']."','".$jobs[$i]['company']."')");

                        // inserting a record
					$insert = $sql->execute();
                        //return $insert;
				}
				$i++;

			}

		}

	}


	public function viewRecentMeroCareer(){
		$con = new Connection();
		$db = $con->openConnection();

		$data = $db->query("SELECT * FROM tbl_merocareer where category='recent'");
		$jobs = $data->fetchAll();
		return $jobs;
	}
}
