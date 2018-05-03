<script type="text/javascript" src="plugins/jQuery/jQuery-2.2.0.min.js"></script>
<script src="js/jquery-1.9.1.min.js"></script>
        <script src="js/bootstrap-datepicker.js"></script>
        <script type="text/javascript" src="js/custom.js"></script>
<form name="add_jobsPortal" method="post" action="controller/process_addJobsPortal.php">
<div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Add Jobs Portal</h3>
            </div>
            <form role="form">
              <div class="box-body">
                <div class="form-group">
                  <label for="jobsportalname">Jobs Portal Name</label>
                  <input type="text" class="form-control" id="jobs_portal_name" name="jobs_portal_name" placeholder="Enter Jobs Portal Name" required="required">
                </div>
                <div class="form-group">
                  <label for="jobsportallocation">Jobs Portal Location</label>
                  <input type="text" class="form-control" id="jobs_portal_location" name="jobs_portal_location" placeholder="Enter Jobs Portal Location" required="required">
                </div>
                <div class="form-group">
                  <label for="jobsportaldescription">Jobs Portal Description</label>
                  <input type="text" class="form-control" id="jobs_portal_description" name="jobs_portal_description" placeholder="Enter Jobs Portal Description" required="required">
                </div>
              <div class="box-footer">
                <button type="submit" class="btn btn-primary" name="add_job_portal">Submit</button>
              </div>
            </form>
          </div>
      </form>