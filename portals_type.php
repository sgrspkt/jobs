<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
	<title>JobsForNepal<title>
	<link rel="stylesheet" href="css/bootstrap.min.css"><!-- bootstrap-CSS -->
	<link rel="stylesheet" href="css/bootstrap-select.css"><!-- bootstrap-select-CSS -->
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" /><!-- style.css -->
	<link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
	<link rel="stylesheet" href="css/font-awesome.min.css" /><!-- fontawesome-CSS -->
	<link rel="stylesheet" href="css/menu_sideslide.css" type="text/css" media="all"><!-- Navigation-CSS -->
	<!-- meta tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Resale Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //meta tags -->
	<!--fonts-->
	<link href='//fonts.googleapis.com/css?family=Ubuntu+Condensed' rel='stylesheet' type='text/css'>
	<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
	<!--//fonts-->	
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
	<!-- switcher-grid and list alignment -->
	<script src="js/tabs.js"></script>	
	<script type="text/javascript">
		$(document).ready(function () {    
			var elem=$('#container ul');      
			$('#viewcontrols a').on('click',function(e) {
				if ($(this).hasClass('gridview')) {
					elem.fadeOut(1000, function () {
						$('#container ul').removeClass('list').addClass('grid');
						$('#viewcontrols').removeClass('view-controls-list').addClass('view-controls-grid');
						$('#viewcontrols .gridview').addClass('active');
						$('#viewcontrols .listview').removeClass('active');
						elem.fadeIn(1000);
					});						
				}
				else if($(this).hasClass('listview')) {
					elem.fadeOut(1000, function () {
						$('#container ul').removeClass('grid').addClass('list');
						$('#viewcontrols').removeClass('view-controls-grid').addClass('view-controls-list');
						$('#viewcontrols .gridview').removeClass('active');
						$('#viewcontrols .listview').addClass('active');
						elem.fadeIn(1000);
					});									
				}
			});
		});
	</script>
	<!-- //switcher-grid and list alignment -->
</head>
<body>
	<!-- Navigation -->
	<div class="agiletopbar">
		<div class="wthreenavigation">
			<div class="menu-wrap">
				<nav class="menu">
					<div class="icon-list">
						<a href="mobiles.html"><i class="fa fa-fw fa-mobile"></i><span>Mobiles</span></a>
						<a href="electronics-appliances.html"><i class="fa fa-fw fa-laptop"></i><span>Electronics and appliances</span></a>
						<a href="cars.html"><i class="fa fa-fw fa-car"></i><span>Cars</span></a>
						<a href="bikes.html"><i class="fa fa-fw fa-motorcycle"></i><span>Bikes</span></a>
						<a href="furnitures.html"><i class="fa fa-fw fa-wheelchair"></i><span>Furnitures</span></a>
						<a href="pets.html"><i class="fa fa-fw fa-paw"></i><span>Pets</span></a>
						<a href="books-sports-hobbies.html"><i class="fa fa-fw fa-book"></i><span>Books, Sports & Hobbies</span></a>
						<a href="fashion.html"><i class="fa fa-fw fa-asterisk"></i><span>Fashion</span></a>
						<a href="kids.html"><i class="fa fa-fw fa-asterisk"></i><span>Kids</span></a>
						<a href="services.html"><i class="fa fa-fw fa-shield"></i><span>Services</span></a>
						<a href="jobs.html"><i class="fa fa-fw fa-at"></i><span>Jobs</span></a>
						<a href="real-estate.html"><i class="fa fa-fw fa-home"></i><span>Real Estate</span></a>
					</div>
				</nav>
				<button class="close-button" id="close-button">Close Menu</button>
			</div>
			<button class="menu-button" id="open-button"> </button>
		</div>
		<div class="clearfix"></div>
	</div>
	<!-- //Navigation -->
	<!-- header -->
	<?php require_once('includes/header.php');?>
	
	<!-- //header -->
	<!-- breadcrumbs -->
	<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs">
				<a href="index.php"><i class="fa fa-home home_1"></i></a> / 
				<span class="bread-portal"><?php echo $_GET['portal'];?></span></span>
			</div>
		</div>
		<!-- //breadcrumbs -->
		<?php 
		$jobportal = $_GET['portal'];
		switch ($jobportal) {
			case 'jobsnepal':
			$page = 'Jobs Nepal';
			$requirehot = 'admin/model/hotjobsnepal.class.php';
			$requirerecent = 'admin/model/recentjobsnepal.class.php';
			$classhot = 'HotJobsNepal';
			$classrecent = 'RecentJobsNepal';
			$viewHotFunc = 'viewHotJobsNepal';
			$viewRecentFunc = 'viewRecentJobsNepal';
			break;
			case 'merocareer':
			$page = 'Mero Career';
			$requirehot = 'admin/model/hotmerocareer.class.php';
			$requirerecent = 'admin/model/recentmerocareer.class.php';
			$classhot = 'HotMeroCareer';
			$classrecent = 'RecentMeroCareer';
			$viewHotFunc = 'viewHotMeroCareer';
			$viewRecentFunc = 'viewRecentMeroCareer';
			break;
			case 'kumarijobs':
			$page = 'Kumari Jobs';
			$requirehot = 'admin/model/hotkumarijobs.class.php';
			$requirerecent = 'admin/model/recentkumarijobs.class.php';
			$classhot = 'HotKumariJobs';
			$classrecent = 'RecentKumariJobs';
			$viewHotFunc = 'viewHotKumariJobs';
			$viewRecentFunc = 'viewRecentKumariJobs';
			break;
			case 'ramrojobs':
			$page = 'Ramro Jobs';
			$requirehot = 'admin/model/hotramrojobs.class.php';
			$requirerecent = 'admin/model/recentramrojobs.class.php';
			$classhot = 'HotRamroJobs';
			$classrecent = 'RecentRamroJobs';
			$viewHotFunc = 'viewHotRamroJobs';
			$viewRecentFunc = 'viewRecentRamroJobs';
			break;		
			default:
				# code...
			break;
		}
		?>

		<!-- Mobiles -->
		<div class="total-ads main-grid-border">
			<div class="container">
				
				<div class="ads-grid">
					<div class="side-bar col-md-3">
						<!-- <div class="search-hotel">
							<h3 class="agileits-sear-head">Name contains</h3>
							<form>
								<input type="text" value="Product name..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Product name...';}" required="">
								<input type="submit" value=" ">
							</form>
						</div> -->
					</div>
					<div class="agileinfo-ads-display col-md-9">
						<div class="wrapper">					
							<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
								<ul id="myTab" class="nav nav-tabs nav-tabs-responsive" role="tablist">
									<li role="presentation" class="active">
										<a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">
											<span class="text hot-jobs-heading">Hot Jobs</span>
										</a>
									</li>
									<li role="presentation" class="next">
										<a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">
											<span class="text">Recent Jobs</span>
										</a>
									</li>
								</ul>
								<div id="myTabContent" class="tab-content">
									<div role="tabpanel" class="tab-pane fade in active <?php echo $jobportal; ?>" id="home" aria-labelledby="home-tab">
										<div>
											<div id="container">
												<div class="clearfix"></div>
												<ul class="list">
													<?php 
													if($jobportal != 'merocareer'):
													$require = require_once($requirehot);
													$objHot = new $classhot;
													$views = $objHot->$viewHotFunc();
													if(sizeof($views)>0):
													foreach ($views as $value) {
														switch ($jobportal) {
															case 'jobsnepal':
															$title = $value['jobs_title'];
															$category = $value['job_category'];
															$jobs_type = $value['jobs_type'];
															break;

															case 'ramrojobs':
															$title = $value['title'];
															$category = $value['category'];
															//$jobs_type = $value['jobs_type'];
															$jobs_url = $value['url'];
															$company = $value['company'];
															$logo = $value['logo'];
															break;

															case 'kumarijobs':
															$title = $value['title'];
															$category = $value['category'];
															//$jobs_type = $value['jobs_type'];
															$jobs_url = $value['url'];
															$company = $value['company'];
															$logo = $value['logo'];
															break;

															default:
																			# code...
															break;
														}
														?>
														<a href="#">
															<li>
																<img src="<?php if(!empty($logo)):echo $logo; else: ''; endif; ?>" title="" alt="" />
																<section class="list-left">
																	<h5 class="title"><?php if(!empty($title)):echo $title; else: ''; endif; ?><h5>
																		<span class="company"><?php if(!empty($company)): echo $company; else: ''; endif; ?></span>
																		<span class="adprice"><?php if(!empty($category)): echo $category; else: ''; endif; ?></span>
																		<p class="catpath"><?php if(!empty($jobs_type)): echo $jobs_type; else: ''; endif;?></p>
																		
																	</section>
																	<!-- <section class="list-right">
																		<span class="date">Today, 17:55</span>
																		<span class="cityname">City name</span>
																	</section> -->
																	<div class="clearfix"></div>
																</li> 
															</a>
															<?php } else: echo 'Data Not Found'; endif; ?>
														<?php else: echo 'Data Not Found'; endif; ?>
														</ul>
													</div>
												</div>
											</div>
											<div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
												<div>
													<div id="container">
														<div class="clearfix"></div>
														<ul class="list">
															<?php 

													$require = require_once($requirerecent);
													$objRecent = new $classrecent;
													$views = $objRecent->$viewRecentFunc();
													if(sizeof($views)>0):
													foreach ($views as $value) {
														switch ($jobportal) {
															case 'jobsnepal':
															$title = $value['jobs_title'];
															$category = $value['job_category'];
															$jobs_type = $value['jobs_type'];
															break;

															case 'ramrojobs':
															$title = $value['title'];
															$category = $value['category'];
															//$jobs_type = $value['jobs_type'];
															$jobs_url = $value['url'];
															$company = $value['company'];
															$logo = $value['logo'];
															$deadline = $value['deadline'];
															$url = $value['url'];
															break;

															case 'kumarijobs':
															$title = $value['title'];
															$category = $value['category'];
															//$jobs_type = $value['jobs_type'];
															$jobs_url = $value['url'];
															$company = $value['company'];
															$logo = $value['logo'];
															break;

															case 'merocareer':
															$title = $value['title'];
															$category = $value['category'];
															//$jobs_type = $value['jobs_type'];
															$jobs_url = $value['url'];
															$company = $value['company'];
															$description = $value['description'];
															break;

															default:
																			# code...
															break;
														}
														?>
															<a href="#">
																<li>
																	<img src="<?php if(!empty($logo)):echo $logo; else: ''; endif; ?>" title="" alt="" />
																<section class="list-left">
																	<h5 class="title"><?php if(!empty($title)):echo $title; else: ''; endif; ?><h5>
																		<span class="company"><?php if(!empty($company)): ?><a href="<?php echo $url;?>"><?php echo $company; ?></a> <?php else: ''; endif; ?></span>
																		<span class="adprice"><?php if(!empty($category)): echo $category; else: ''; endif; ?></span>
																		<p class="catpath"><?php if(!empty($jobs_type)): echo $jobs_type; else: ''; endif;?></p>
																		<span class="deadline"><?php if(!empty($deadline)): echo $deadline; else: ''; endif; ?></span>
																		<span class="description"><?php if(!empty($description)): echo $description; else: ''; endif; ?></span>
																		
																	</section>
																	<!-- <section class="list-right">
																		<span class="date">Today, 17:55</span>
																		<span class="cityname">City name</span>
																	</section> -->
																	<div class="clearfix"></div>
																</li> 
															</a>
															<?php } else: 'Data Not Found'; endif; ?>
														</ul>
													</div>
												</div>
											</div>

										</div>
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>	
				</div>
				<!-- // Mobiles -->
				<!--footer section start-->		
				<?php require_once('includes/footer.php');?>
				<!--footer section end-->
			</body>
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
					});
				</script>
				<!-- start-smoth-scrolling -->
				<!-- //here ends scrolling icon -->
				</html>