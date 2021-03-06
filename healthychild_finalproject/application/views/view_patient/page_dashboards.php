<!DOCTYPE html>
<html lang="en">
<head>
  <title>Patient Page</title>
  <link rel="shortcut icon" href="<?php echo base_url('assets/image/logo.png') ?>">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
  <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
  <style type="text/css">
  	.navbar-red {
    	background-color: #0009;
    	color: #fff;
		}
	  .navbar-red .navbar-brand {
    	color: #fff;
	  }
	  .navbar-red .navbar-nav > li > a {
    	color: #fff;
	  }
    .navbar-red .navbar-nav > li > a:hover,
    .navbar-red .navbar-nav > li > a:focus {
      background-color: #0009;
    }
	  .box {
		  margin-top: 80px;
      margin-bottom: 20px;
		  padding: 10px;
		  background-color: #fff	;
		  border-radius: 5px;
	  }
	  body {
      background-size: cover;
	  }
  </style>
</head>
<body>
<div id="main">
  <nav class="navbar navbar-red navbar-fixed-top">
    <div class="container">
      <div class="navbar-header">
        <a class="navbar-brand" href="#"><?php echo $this->data['logo'] ?></a>
      </div>
      <ul class="nav navbar-nav">
        <li class="active"><a href="<?php echo base_url('index.php/welcome/pageMenu') ?>">Dashboard</a></li>
        <li><a  href="<?php echo base_url('index.php/welcome/consultation') ?>">Consultation</a></li>
        <li>
          <ul class="nav navbar-nav navbar-right text-center">
        <li class="dropdown pull-right">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">    Prescription
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="<?php echo base_url('index.php/welcome/notification') ?>">Notification</a></li>
            <li><a href="<?php echo base_url('index.php/welcome/result') ?>">Result</a></li>
          </ul>
        </li>
      </ul>
        </li>
        <li>
          <ul class="nav navbar-nav navbar-right text-center">
        <li class="dropdown pull-right">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Pharmacy
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="<?php echo base_url('index.php/welcome/pharmacy') ?>">Medicines</a></li>
            <li><a href="<?php echo base_url('index.php/welcome/history') ?>">History</a></li>
          </ul>
        </li>
      </ul>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right text-center">
        <li class="dropdown pull-right">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user"></span>  Profile
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="<?php echo base_url('index.php/welcome/editprofile') ?>">Edit Profile</a></li>
            <li><a href="<?php echo base_url('index.php/welcome/logout') ?>"><span class="glyphicon">&#xe163;</span> Logout</a></li>

          </ul>
        </li>
      </ul>
    </div>
  </nav>
</div>
