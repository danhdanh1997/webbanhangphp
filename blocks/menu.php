<?php 
$sql_danhmuc="select * from danhmuc";
$query_dm=mysqli_query($conn,$sql_danhmuc);
?>
<?php 
	$sql_sp="select * from sanpham ";
	$query_sp=mysqli_query($conn,$sql_sp);
?> 

<div class="menu">
    	<ul> 
        	<li><a href="index.php"><font size="+1"><img src="/webbanhangphp/webbanhang/images/home.png" height="30 " width="30"></font></a></li>
            <?php
            while($dong_dm=mysqli_fetch_array($query_dm)){
			?>
            
            <li><a href="index.php">
			<font size="+1">Sản phẩm</font></a>
                <ul>
                 <div class="dt1">
                    <?php while($dong_sp=mysqli_fetch_array($query_dm))
					{					
					?>
            		<li><a href="index.php?xem=chitietsanpham&id=<?php echo $dong_sp['MaDM']?>">
					<font size="+1"><?php echo $dong_sp['TenDM']?></font>
                    </a></li>
            		<?php } ?>
                   </div>
                   </ul>
              <?php
			  }
		       ?>
          </li>
          <li><font size="+1"><a href="index.php?xem=gioithieu">Giới thiệu</font></a></li>
          <li><font size="+1"><a href="index.php?xem=huongdan">Hướng dẫn</font></a></li>
          <li><font size="+1"><a href="index.php?xem=chonsize">Hướng dẫn chọn size</font></a></li>
          <li><font size="+1"><a href="index.php?xem=lienhe">Liên hệ</font></a></li>
          <?php
            if (!isset($_SESSION["dangnhap"])) {
              echo '<li><font size="+1"><a href="index.php?xem=dangky">Đăng ký</font></a></li>';
            } else {
               echo '<li><font size="+1"><a href="index.php?xem=dangxuat">Đăng xuất</font></a></li>';
            }
          ?>         

		 </ul>      
</div>  