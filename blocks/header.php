<?php 
ob_start();
include('Admin/modular/config.php');
?>
<div class="header">
<ul>
<li><img src="webbanhang/images/logo1.png" width="265px" height="100%" "></li>

<li>
    <form style="width:600px;" action="index.php"  method="post" enctype="multipart/form-data">
      <div class="timkiem" style="padding-top:95px">
        <input type="text" id="searchf" name="searchtext" style="height:30px;width:300px" border="1"/>
        <input type="submit" id="searchbtn" name="search" style="height:30px;width:65px" value="Tìm kiếm" placeholder="Search..."/>
      </div>
    </form>
</li> 

<li><a href="index.php?xem=dangnhap"><img src="webbanhang/images/login.jpg" style="width:45px; height:45px; padding-top:20px; "></a></li>
<li><a href="index.php?xem=giohang"> <img src="webbanhang/images/cart.png" style="width:50px; height:50px; padding-top:20px;"></a></li>
</ul>


</div>