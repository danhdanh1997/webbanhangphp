<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="Style/css.css"/>
<title>Website bán giày</title>
</head>
<body>
	<div class="wrapper">
   <?php
   @session_start();	
    include('Admin/modular/config.php');
   	include('blocks/header.php');
	include('blocks/banner.php');
	include('blocks/menu.php');
	include('blocks/content.php');
	include('blocks/footer.php');
   ?>
	</div>
</body>
</html>