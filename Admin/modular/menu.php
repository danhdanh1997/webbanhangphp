<?php 
	if(isset($_GET['ac']) && $_GET['ac']=='logout'){
		unset($_SESSION['login']);
		header('location:login.php');
		}
?>

 <div class="menu">
	<ul>
        <li><a href="index.php?Quanly=QuanlyDM&action=Them">Quản lý DM</a></li>
        <li><a href="index.php?Quanly=QuanlyNCC&action=Them">Quản lý NCC</a></li>
        <li><a href="index.php?Quanly=QuanlySP&action=Them">Quản lý sản phẩm</a></li>
        <li><a href="index.php?Quanly=QuanlyNV&action=Them">Quản lý NV</a></li>
       
       <li><a href="index.php?Quanly=Xulyhoadon">Xử lý hoá đơn</a></li>
      
        <li><a href="index.php?Quanly=donhang">Quản lý đơn hàng</a></li>
         <li><a href="index.php?Quanly=Inhoadon">In hoá đơn</a></li>
         <li><a href="index.php?Quanly=doanhthu">Doanh thu</a></li>
        <li><a href="index.php?ac=logout">Đăng xuất</a></li>
    </ul> 
</div>