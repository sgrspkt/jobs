<?php
require_once('connection.class.php');

class JobsPortals extends Connection{
	private $jobs_portal_id;
	private $jobs_portal_name;
	private $jobs_portal_location;
	private $jobs_portal_description;

	public function setJobsPortalId($jd=''){
		$this->jobs_portal_id=$jd;
	}
	
	public function setJobsPortalName($je=''){
		$this->jobs_portal_name=$je;
	}
	public function setjobsPortallocation($hn=''){
		$this->jobs_portal_location=$hn;
	}
	public function setjobsPortalDescription($mp=''){
		$this->jobs_portal_description=$mp;
	}
	
		//--------------------------- Add jobs-------------------------//
	
	public function addJobsPortal()
	{	
		try
		{
			
			$con = new Connection();
			$db = $con->openConnection();
			
     // sql to create table
			$sql = $db->prepare("INSERT INTO tbl_portals (`name`,`location`,`description`) VALUES ('$this->jobs_portal_name','$this->jobs_portal_location','$this->jobs_portal_description')") ;

    // inserting a record
			
			$insert = $sql->execute();
			return $insert;
   // echo "New record created successfully";
			
		}
		
		catch (PDOException $e)
		
		{
			
			echo "There is some problem in connection: " . $e->getMessage();
			
		}
	}
	
		//------------------view category section ------------------------//
	public function viewJobPortals(){
		$con = new Connection();
		$db = $con->openConnection();
		if(isset($this->jobs_portal_id)){
			$data = $db->query("SELECT * FROM tbl_portals WHERE id = '$this->jobs_portal_id'");
			$jobs = $data->fetchAll();

		}elseif(isset($this->jobs_portal_name)){
			$data = $db->query("SELECT * FROM tbl_portals WHERE jobs_portal_name='$this->jobs_portal_name");
			$jobs = $data->fetchAll();
		}
		else{
			$data = $db->query("SELECT * FROM tbl_portals ORDER BY id DESC");
			$jobs = $data->fetchAll();

		}
		return $jobs;		
		
		
		
	}

//----------------------------delete category section -------------------------------//
	public function deleteJobsPortals(){
		
		$this->sql="DELETE FROM tbl_portals WHERE id='$this->jobs_portal_id'";
		$this->res=mysqli_query($this->conxn,$this->sql) or trigger_error($this->err=mysqli_error($this->conxn));
		$this->affRows=mysqli_affected_rows($this->conxn);// or trigger_error($this->err=mysqli_error($this->conxn));
		if($this->affRows>0){
			return true;
		}
		else{
			return false;
		}
		
	}
	
	
	//----------------------------update category section-----------------------------//
	public function updateJobs(){
		$this->jobs_portal_id = (int)$this->jobs_portal_id; 
		
		$this->sql="UPDATE hall SET name='$this->jobs_portal_name', location='$this->jobs_portal_location', description='$this->jobs_portal_description' WHERE id= $this->jobs_portal_id ";
		$statement = $db->prepare($sql);
		$update = $statement->execute();

		
	}

	
}