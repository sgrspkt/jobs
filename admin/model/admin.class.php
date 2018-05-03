<?php
class Admin extends connection{
	private $admin_id;
	private $admin_email;
	private $admin_password;
	private $admin_ckpassword;
	
	public function setAdminID($ad=''){
		$this->admin_id=$ad;
	}
	public function setEmail($el=''){
		$this->admin_email=$el;
	}
	public function setPassword($ad=''){
		$this->admin_password=$ad;
	}
	public function setCkPassword($ck=''){
		$this->admin_ckpassword=$ck;
	}

	//---------------adding the admin-----------------

	public function addAdmin()
	{	
		try
		{
			$con = new Connection();
			$db = $con->openConnection();
     // sql to create table
			$sql = $db->prepare("INSERT into tbl_admin (id,email,password,ckpassword) VALUES('$this->id','$this->admin_email','$this->admin_password','$this->admin_ckpassword')") ;
    // inserting a record
			$sql->execute();
   // echo "New record created successfully";
		}
		catch (PDOException $e)
		{
			echo "There is some problem in connection: " . $e->getMessage();
		}
	}
	
	//---------------------validate admin --------------------------------//
	public function validateAdmin(){
		$con = new Connection();
		$db = $con->openConnection();
		$data = $db->query("SELECT * FROM tbl_admin WHERE email='$this->admin_email' AND password='$this->admin_password'");
		$admin = $data->fetchAll();
		return $admin;	
	}
	
//------------------view admin section ------------------------//
	public function viewAdmin(){
		$con = new Connection();
		$db = $con->openConnection();
		$data = $db->query("SELECT * FROM tbl_admin");
		$admin = $data->fetchAll();
		return $admin;	
	}
}
?>