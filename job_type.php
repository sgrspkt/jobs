<!-- js -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<!-- js -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/bootstrap.js"></script>
<script src="js/bootstrap-select.js"></script>
<script>
	$(document).ready(function () {
		var mySelect = $('#first-disabled2');

		$('#special').on('click', function () {
			mySelect.find('option:selected').prop('disabled', true);
			mySelect.selectpicker('refresh');
		});

		$('#special2').on('click', function () {
			mySelect.find('option:disabled').prop('disabled', false);
			mySelect.selectpicker('refresh');
		});

		$('#basic2').selectpicker({
			liveSearch: true,
			maxOptions: 1
		});
	});
</script>
<!-- language-select -->
<script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
<link href="css/jquery.uls.css" rel="stylesheet"/>
<link href="css/jquery.uls.grid.css" rel="stylesheet"/>
<link href="css/jquery.uls.lcd.css" rel="stylesheet"/>
<!-- Source -->
<script src="js/jquery.uls.data.js"></script>
<script src="js/jquery.uls.data.utils.js"></script>
<script src="js/jquery.uls.lcd.js"></script>
<script src="js/jquery.uls.languagefilter.js"></script>
<script src="js/jquery.uls.regionfilter.js"></script>
<script src="js/jquery.uls.core.js"></script>
<script>
	$( document ).ready( function() {
		$( '.uls-trigger' ).uls( {
			onSelect : function( language ) {
				var languageName = $.uls.data.getAutonym( language );
				$( '.uls-trigger' ).text( languageName );
			},
					quickList: ['en', 'hi', 'he', 'ml', 'ta', 'fr'] //FIXME
				} );
	} );
</script>
<!-- //language-select -->
<!-- responsive tabs -->
<link rel="stylesheet" type="text/css" href="css/easy-responsive-tabs.css " />
<script src="js/easyResponsiveTabs.js"></script>
<!-- /responsive tabs -->
</head>
<body>
	<!-- header -->
	<?php require_once('includes/header.php');?>
	
	<!-- //header -->
	<!-- breadcrumbs -->
	<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="index.php"><i class="fa fa-home home_1"></i></a> / <span><?php echo $jobtype = $_GET['type'];?></span></span>
		</div>
	</div>
	<!-- //breadcrumbs -->
	<!-- Categories -->
	<!--Vertical Tab-->
	<div class="categories-section main-grid-border">
		<div class="container">
			<h2 class="w3-head">
				<?php 
				$jobtype = $_GET['type'];
				switch ($jobtype) {
					case 'hotjob':
					echo 'Hot Jobs';
					break;
					case 'recentjob':
					echo 'Recent Jobs';
					break;
					default:
					echo 'Hot Jobs';
							# code...
					break;
				}
				?>
			</h2>
			<div class="category-list">
				<div id="parentVerticalTab">
					<div class="agileits-tab_nav">
						<ul class="resp-tabs-list hor_1">
							<li id="jobsnpl" class="jobsnpl-<?php echo $jobtype; ?>">Jobs Nepal</li>
							<li id="merocareer" class="merocareer-<?php echo $jobtype; ?>">Mero Career</li>
							<li id="kumarijobs" class="kumarijobs-<?php echo $jobtype; ?>">Kumari Jobs</li>
							<li id="ramrojobs" class="ramrojobs-<?php echo $jobtype; ?>">Ramro Jobs</li>
						</ul>
					</div>
					<div class="resp-tabs-container hor_1">
						<div><div class="category mero-job-content"></div></div>
						<div><div class="category mero-career-content"></div></div>
						<div><div class="category kumari-jobs-content"></div></div>
						<div><div class="category ramro-jobs-content"></div></div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!--Plug-in Initialisation-->
	<script type="text/javascript">
		$(document).ready(function() {

        //Vertical Tab
        $('#parentVerticalTab').easyResponsiveTabs({
            type: 'vertical', //Types: default, vertical, accordion
            width: 'auto', //auto or any width like 600px
            fit: true, // 100% fit in a container
            closed: 'accordion', // Start closed if in accordion view
            tabidentify: 'hor_1', // The tab groups identifier
            activate: function(event) { // Callback function if tab is switched
            	var $tab = $(this);
            	var $info = $('#nested-tabInfo2');
            	var $name = $('span', $info);
            	$name.text($tab.text());
            	$info.show();
            }
        });
    });
</script>
<!-- //Categories -->
<!--footer section start-->		
<php require_once('includes/footer.php');?>
	<!--footer section end-->
	<!-- Navigation-JavaScript -->
	<script src="js/classie.js"></script>
	<script src="js/main.js"></script>
	<!-- //Navigation-JavaScript -->
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
					/*
						var defaults = {
						containerID: 'toTop', // fading element id
						containerHoverID: 'toTopHover', // fading element hover id
						scrollSpeed: 1200,
						easingType: 'linear' 
						};
						*/

						$().UItoTop({ easingType: 'easeOutQuart' });

					});
				</script>
				<!-- start-smoth-scrolling -->
				<script type="text/javascript" src="js/move-top.js"></script>
				<script type="text/javascript" src="js/easing.js"></script>
				<script type="text/javascript">
					jQuery(document).ready(function($) {
						$(".scroll").click(function(event){		
							event.preventDefault();
							$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
						});

						//custom js by sagar
						$("#jobsnpl").click(function(event){
							var className = $(this).attr('class');
							var idName = $(this).attr('id');
							//console.log(idName);
							if($(this).hasClass("jobsnpl-hotjob")){
								switch(idName) {
									case 'jobsnpl':

									$.ajax({
										url: 'ajaxcall.php',
										type: 'POST',
										data: jQuery.param({ jobsnepaljobtype: idName}) ,
										success: function (response) {
											var res = $.parseJSON(response);
											res.forEach(function(data){

												var values= '<div class="category-img"><img src="images/jobsnepal_logo.png" title="image" alt="" /></div><div class="category-info"><span class="jobs-title"><h4>'+data.jobs_title+'</h4></span><span class="jobs-category">'+data.job_category+'</span><span class="jobs-type">'+data.jobs_type+'</span></div><div class="clearfix"></div><hr>';
												$(values).appendTo(".mero-job-content");

											})
										},
										error: function () {
											alert("error");
										}
									}); 

																		
									break;
									default:
									console.log('wrong');
									
								}
							}else{
								switch(idName) {
									case 'jobsnpl':

									$.ajax({
										url: 'ajaxcall.php',
										type: 'POST',
										data: jQuery.param({ jobsnepalrecent: idName}) ,
										success: function (response) {
											var res = $.parseJSON(response);
											res.forEach(function(data){

												var values= '<div class="category-img"><img src="images/jobsnepal_logo.png" title="image" alt="" /></div><div class="category-info"><span class="jobs-title"><h4>'+data.jobs_title+'</h4></span><span class="jobs-category">'+data.job_category+'</span><span class="jobs-type">'+data.jobs_type+'</span></div><div class="clearfix"></div><hr>';
												$(values).appendTo(".mero-job-content");
												//console.log(data);

											})
										},
										error: function () {
											alert("error");
										}
									}); 

																		
									break;
									default:
									console.log('wrong');
									
								}
							}
						});

						//kummarijobs

						$("#kumarijobs").click(function(event){
							var className = $(this).attr('class');
							var idName = $(this).attr('id');
							//console.log(idName);
							if($(this).hasClass("kumarijobs-hotjob")){
								switch(idName) {
									case 'kumarijobs':

									$.ajax({
										url: 'ajaxcall.php',
										type: 'POST',
										data: jQuery.param({ kumarijobtype: idName}) ,
										success: function (response) {
											var res = $.parseJSON(response);
											res.forEach(function(data){

												var values= '<div class="category-img"><img src="'+data.logo+'" title="image" alt="" /></div><div class="category-info"><span class="jobs-title"><h4>'+data.title+'</h4></span><span class="jobs-company"><a href="'+data.url+'">'+data.company+'</span><span class="jobs-category">'+data.category+'</span></div><div class="clearfix"></div><hr>';
												$(values).appendTo(".kumari-jobs-content");
												//console.log(data);

											})
										},
										error: function () {
											alert("error");
										}
									}); 

																		
									break;
									default:
									console.log('wrong');
									
								}
							}else{
								switch(idName) {
									case 'kumarijobs':

									$.ajax({
										url: 'ajaxcall.php',
										type: 'POST',
										data: jQuery.param({ recentkumarijobtype: idName}) ,
										success: function (response) {
											var res = $.parseJSON(response);
											res.forEach(function(data){

												var values= '<div class="category-img"><img src="images/kumarijobs_logo.png" title="image" alt="" /></div><div class="category-info"><span class="jobs-title"><h4>'+data.title+'</h4></span><span class="jobs-company"><a href="'+data.url+'">'+data.company+'</span><span class="jobs-category">'+data.category+'</span><span class="jobs-deadline">'+data.deadline+'</span></div><div class="clearfix"></div><hr>';
												$(values).appendTo(".kumari-jobs-content");
												//console.log(data);

											})
										},
										error: function () {
											alert("error");
										}
									}); 

																		
									break;
									default:
									console.log('wrong');
									
								}
							}
						});

						//ramrojobs

						$("#ramrojobs").click(function(event){
							var className = $(this).attr('class');
							var idName = $(this).attr('id');
							//console.log(idName);
							if($(this).hasClass("ramrojobs-hotjob")){
								switch(idName) {
									case 'ramrojobs':

									$.ajax({
										url: 'ajaxcall.php',
										type: 'POST',
										data: jQuery.param({ ramrojobtype: idName}) ,
										success: function (response) {
											var res = $.parseJSON(response);
											res.forEach(function(data){

												var values= '<div class="category-img"><img src="'+data.logo+'" title="image" alt="" /></div><div class="category-info"><span class="jobs-title"><h4>'+data.title+'</h4></span><span class="jobs-company"><a href="'+data.url+'">'+data.company+'</span><span class="jobs-category">'+data.category+'</span></div><div class="clearfix"></div><hr>';
												$(values).appendTo(".ramro-jobs-content");
												//console.log(data);

											})
										},
										error: function () {
											alert("error");
										}
									}); 

																		
									break;
									default:
									console.log('wrong');
									
								}
							}else{
								switch(idName) {
									case 'ramrojobs':

									$.ajax({
										url: 'ajaxcall.php',
										type: 'POST',
										data: jQuery.param({ recentramrojobtype: idName}) ,
										success: function (response) {
											var res = $.parseJSON(response);
											res.forEach(function(data){

												var values= '<div class="category-img"><img src="images/ramrojobs_logo.png" title="image" alt="" /></div><div class="category-info"><span class="jobs-title"><h4>'+data.title+'</h4></span><span class="jobs-company"><a href="'+data.url+'">'+data.company+'</span><span class="jobs-category">'+data.category+'</span><span class="jobs-deadline">'+data.deadline+'</span></div><div class="clearfix"></div><hr>';
												$(values).appendTo(".ramro-jobs-content");
												//console.log(data);

											})
										},
										error: function () {
											alert("error");
										}
									}); 

																		
									break;
									default:
									console.log('wrong');
									
								}
							}
						});

						//merocareer

						$("#merocareer").click(function(event){
							var className = $(this).attr('class');
							var idName = $(this).attr('id');
							//console.log(idName);
							if($(this).hasClass("merocareer-recentjob")){
								switch(idName) {
									case 'merocareer':

									$.ajax({
										url: 'ajaxcall.php',
										type: 'POST',
										data: jQuery.param({ merocareertyperecent: idName}) ,
										success: function (response) {
											var res = $.parseJSON(response);
											res.forEach(function(data){

												var values= '<div class="category-img"><img src="images/merocareer_logo.jpg" title="image" alt="" /></div><div class="category-info"><span class="jobs-title"><h4>'+data.title+'</h4></span><span class="jobs-company"><a href="'+data.url+'">'+data.company+'</span><span class="jobs-category">'+data.category+'</span><span class="jobs-description">'+data.description+'</span></div><div class="clearfix"></div><hr>';
												$(values).appendTo(".mero-career-content");
												//console.log(data);

											})
										},
										error: function () {
											alert("error");
										}
									}); 

																		
									break;
									default:
									console.log('wrong');
									
								}
							}else{
								console.log("recentjob")
							}
						});


					});
				</script>
				<!-- start-smoth-scrolling -->
				<!-- //here ends scrolling icon -->
			</body>
			</html>