<?php
require_once('connection.class.php');

class Jobs extends Connection{
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
	
		//--------------------------- Add jobs Nepal-------------------------//

		public function addJobs()
		{	
try
{
 
    $con = new Connection();
$db = $con->openConnection();
 include_once('admin/plugins/htmldom/simple_html_dom.php');
// Create DOM from URL or file
$html = file_get_html('http://www.jobsnepal.com');
 
// creating an array of elements
$jobs = [];
 
// Find all jobs
$i = 1;
foreach ($selector = $html->find('div .job-listing .row') as $job) {
       
        // Find item link element 
        $jobDetails = $job->find('a.job-item', 0);
 
        // get title attribute
        $jobTitle = $jobDetails->innertext;

        //get job deadline
        $deadlines = $job->find('.center span',0);
        $deadline = $deadlines->innertext;

        //get job type
        $jobtypes = $job->find('.center',0);
        $jobtype = $jobtypes->innertext;

        // get href attribute
        $jobUrl = $jobDetails->href;
 
        // push to a list of job
        $jobs[] = [
                'title' => $jobTitle,
                'url' => $jobUrl,
                'jobtype' => $jobtype,
                'deadline' => $deadline
        ];
 
        $i++;
}
echo $i;
foreach ($jobs as $i => $values) {
 // sql to create table
	$sql = $db->prepare("INSERT INTO tbl_jobs(`jobtype_id`,`portal_id`,`jobs_title`,`jobs_url`,`company_logo`,`jobs_desc`,`jobs_type`,`jobs_deadline`) VALUES ('1','1','".$values['title']."','".$values['url']."','test','testt','".$values['jobtype']."', '".$values['deadline']."')");

    // inserting a record
 
    $insert = $sql->execute();
 //return $insert;
   
    }
}
 
catch (PDOException $e)
 
{
 
    echo "There is some problem in connection: " . $e->getMessage();
 
}
		}
		
		//------------------view jobs nepal ------------------------//
		public function viewJobs(){
			$con = new Connection();
            $db = $con->openConnection();
			if(isset($this->jobs_id)){
				$data = $db->query("SELECT * FROM tbl_jobs WHERE jobs_id = '$this->jobs_id'");
				$jobs = $data->fetchAll();

			}elseif(isset($this->jobs_title)){
				$data = $db->query("SELECT * FROM tbl_jobs WHERE jobs_title='$this->jobs_title");
				$jobs = $data->fetchAll();
			}
			else{
$data = $db->query("SELECT * FROM tbl_jobs ORDER BY jobs_id DESC");
$jobs = $data->fetchAll();

			}
	return $jobs;		
		
}


}