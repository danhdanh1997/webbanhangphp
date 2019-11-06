 <?php
 	if(isset($_POST['search'])){
		$search=$_POST['searchtext'];
		$sql_search="select * from sanpham where TenSP LIKE '%$search%' or  Dongia LIKE '%$search%' ";
		$query_search=mysqli_query($conn,$sql_search);
	}
?>
        	 <h2 style="text-align:center;color:#FFF;background:#699;padding:10px;">Sản phẩm tìm thấy với từ khóa </h2>
            
             <div class="timkiemsp">
             <?php
			 if($count=mysqli_num_rows($query_search)==0){?>
				 <h1>Không tìm thấy sản phẩm nào với từ khóa trên !</h1>
			 <?php
			 }else{
			 ?>
             	<ul>
                <?php
				while($dong_search=mysqli_fetch_array($query_search)){
				?>
                	<li><a href="index.php?xem=chitietmotsanpham&id=<?php echo $dong_search['MaSP']?>">
                    	<img src="Admin/modular/QuanlySP/hinhanh/<?php echo $dong_search['AnhSP'] ?> " width="130" height="130" />
                        <p style="color:#699"><?php echo $dong_search['TenSP'] ?></p>
                        <p style="color:black;">Giá sp:<?php echo $dong_search['Dongia'] .''.'VNĐ'?> </p>
                        <p style="color:#F60;">Chi tiết sản phẩm</p>
                    </a></li>
                    
                    <?php
				}
			 }
					?>
                </ul>
             </div>
             
 