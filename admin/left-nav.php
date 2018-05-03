<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
<?php if($_SESSION['email'] != null ){
                echo "<p>". $_SESSION['email'].'</p>';
                }?>
          
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">MAIN NAVIGATION</li>

        <!--admin-->
        <li class="treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Admin</span> <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="index.php?page=admin&action=view"><i class="fa fa-circle-o"></i> View Admin</a></li>
          </ul>
        </li>
       
        <!--jobs nepal-->
        <li class="treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Jobs Nepal</span> <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li class="active"><a href="index.php?page=jobsnepal&action=recentview"><i class="fa fa-circle-o"></i>Recent Jobs</a></li>
            <li><a href="index.php?page=jobsnepal&action=hotview"><i class="fa fa-circle-o"></i>Hot Jobs</a></li>
          </ul>
        </li>

         <!--mero career-->
        <li class="treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Mero Career</span> <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li class="active"><a href="index.php?page=merocareer&action=recentview"><i class="fa fa-circle-o"></i>Recent Jobs</a></li>
          </ul>
        </li>

        <!--kumari job-->
        <li class="treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Kumari Job</span> <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li class="active"><a href="index.php?page=kumarijob&action=recentview"><i class="fa fa-circle-o"></i>Recent Jobs</a></li>
            <li class="active"><a href="index.php?page=kumarijob&action=hotview"><i class="fa fa-circle-o"></i>Hot Jobs</a></li>
          </ul>
        </li>

         <!--ramro job-->
        <li class="treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Ramro Job</span> <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li class="active"><a href="index.php?page=ramrojob&action=recentview"><i class="fa fa-circle-o"></i>Recent Jobs</a></li>
            <li class="active"><a href="index.php?page=ramrojob&action=hotview"><i class="fa fa-circle-o"></i>Hot Jobs</a></li>
          </ul>
        </li>

      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>
