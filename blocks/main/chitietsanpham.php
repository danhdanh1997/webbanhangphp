<?php
	  $sql_ctsp="select * from sanpham where MaDM=$_GET[id]";
	$query_ctsp=mysqli_query($conn,$sql_ctsp);
 ?>
<?php
	$sql_tenncc="select TenDM from danhmuc where MaDM='$_GET[id]' ";
	$row=mysqli_query($conn,$sql_tenncc);
	$dong=mysqli_fetch_array($row);
?>
<div class="chitietsanpham">	
	<p style="text-align:center;color:#000; background:#699; padding:10px; size:auto;">
    <font size="+2" color="#FFFFFF"><?php echo $dong['TenDM'] ?></font></p>              
       	<ul>
                     <?php
						while($dong_ctsp=mysqli_fetch_array($query_ctsp)){
						?>
                    	<li><a href="index.php?xem=chitietmotsanpham&id=<?php echo $dong_ctsp['MaSP']?>">                      
                        	<img src="Admin/modular/QuanlySP/hinhanh/<?php echo $dong_ctsp['AnhSP'] ?>" width="150" height="150" />
                            <p style="color:#699"><strong><?php echo $dong_ctsp['TenSP'] ?></strong></p>
                            <p style="color:black;"> Giá: <?php echo number_format($dong_ctsp['Dongia']).''.'VNĐ'?></p>
                             <p style="color:#F60;">Chi tiết sản phẩm</p>
                        </a></li>
                       <?php
						}
					   ?>
                  
        </ul>
    </div>