<?php 
	 if(isset($_GET['trang'])){;
	$trang=$_GET['trang'];
	 }else{
		 $trang ='';
		 }
	if($trang=='' || $trang=='1'){
		$trang1=0;
	}else{
		$trang1=($trang*10)-10;
		}	 
 $sql_all="select * from sanpham limit $trang1,10" ;
 $query_all= mysqli_query($conn,$sql_all);
?>
		<!-- kết thúc phân trang -->
    <div class="hangbanchay">
   <p style="text-align:center;color:#000; background:#699; padding:10px;size:auto;">
<font color="#FFF"size="+2" >Sản phẩm nổi bật</font></p>

    <?php
	$sql_banchay=mysqli_query($conn,"select * from sanpham order by MaSP desc limit 8");
	?>
    <ul class="hangbanchay">	
     <?php
	while($dong_banchay=mysqli_fetch_array($sql_banchay)){
	?>
    <li><a href="index.php?xem=chitietmotsanpham&&id=<?php echo $dong_banchay['MaSP'] ?>">
     <img src="Admin/modular/QuanlySP/hinhanh/<?php echo $dong_banchay['AnhSP'] ?>" width="130" height="170" />
     <p style="color:#699"><strong><?php echo $dong_banchay['TenSP'] ?></strong></p>
    <p style="color:black;" > Giá:<?php echo number_format($dong_banchay['Dongia']).'' . 'VNĐ'?></p>
    <p style="color:#F60;">Chi tiết sản phẩm</p>
     </a></li>
    <?php
	}
	?>
    </ul>
    </div>
    <!-- -->      
    <div class="allsanpham">
     <p style="text-align:center;color:#000; background:#699; margin-top:650px; padding:10px;size:auto;">
<font color="#FFF"size="+2" >Tất cả sản phẩm </font></p>
    <ul>
              <?php
				while($dong_all=mysqli_fetch_array($query_all))
				{
				?>
            <li><a href="index.php?xem=chitietmotsanpham&id=<?php echo $dong_all['MaSP']?>">                      
            <img src="Admin/modular/QuanlySP/hinhanh/<?php echo $dong_all['AnhSP'] ?>" width="130" height="170" />
            <p style="color:#699"><strong><?php echo $dong_all['TenSP'] ?></strong></p>
            <p style="color:black;">Giá: <?php echo number_format($dong_all['Dongia']).''.'VNĐ'?></p>
            	</a>
                <p style="color:#F60;">Chi tiết sản phẩm</p>
      </li>
              <?php
				}
			   ?>
      </ul>
        </ul>
      </div>
      <p style="clear:both;"></p>
      <div class="phantrang" align="center">
      <h3>
      Trang:
      <?php 
	  $sql_trang=mysqli_query($conn,"select * from sanpham ");
	  $count=mysqli_num_rows($sql_trang); //đếm có bao nhiêu sp trong table sanpham
	  $a=ceil($count/10); // phân chia 10 sp/trang
	  for($b=1;$b<=$a;$b++){
		  echo '<a href="?trang='.$b.'" style="text-decoration:none">'.'|'.' '.$b.' '.'|'.'</a>';
		  }
	  ?>
      </h3>
	  </div>