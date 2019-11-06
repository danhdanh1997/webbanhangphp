<div class="cart" style="height:1500px">
<p style="text-align:center;color:#FFF; background:#699; padding:10px;size:auto;">
<font color="#FFF"size="+2" >Giỏ hàng</font></p>
<?php
	@session_start();
	if(isset($_SESSION['product'])){
		if(isset($_SESSION['dangnhap'])){
			echo '<h2> Xin chào bạn: '.$_SESSION['dangnhap'].' </h2>';
		}else{
			echo '<div class="tieude">Giỏ hàng của bạn</div>';
		}
			echo '<div class="box_giohang">';
			echo '<table width="100%" border="1" style="border-collapse:collapse; margin:5px; text-align:center;">';	
			echo '<tr>';
			echo '<td>Mã SP</td>';
			echo '<td>Tên SP</td>';
			echo '<td>Hình ảnh</td>';
			echo '<td>Giá sp</td>';
			echo '<td>SL</td>';
			echo '<td>Tổng tiền</td>';
			echo '<td>Quản lý</td>';
			echo '</tr>';
	$thanhtien=0;
	foreach($_SESSION['product'] as $cart_item){
			$id=$cart_item['id'];
			$sql="select * from sanpham where MaSP='$id'";
			$query=mysqli_query($conn,$sql);
			$dong=mysqli_fetch_array($query);
		 	echo'<tr>';
			echo'<td>'.$dong['MaSP'].'</td>';
			echo'<td>'.$dong['TenSP'].'</td>';
			echo'<td><img src="Admin/modular/QuanlySP/hinhanh/'.$dong['AnhSP'].'" width="100" height="100" /></td>';
			echo'<td>'.number_format($dong['Dongia']).'</td>';
			echo'<td><a href="update_cart.php?cong='.$cart_item['id'].'" style="margin-right:2px;">Cong</a>'.$cart_item['soluong'].'<a href="update_cart.php?tru='.$cart_item['id'].'" style="margin-left:2px;">Tru
			</a></td>';
			$tongtien=0;
			$tongtien=$cart_item['soluong']*$cart_item['Dongia'];
			$thanhtien=($thanhtien + $tongtien);
			echo'<td>'.number_format($tongtien).'</td>';
			echo'<td><a href="update_cart.php?xoa='.$cart_item['id'].'"><img src="./images/delete.png" style="width:30px; height:30px"></a></td>';
			echo'</tr>';
			echo '<tr>';
			echo'</tr>';
  	}
			echo '<tr>
				<td colspan="6"><a href="update_cart.php?xoatoanbo=1"  style="text-decoration:none;" >Xóa toàn bộ</a>			
				</td>	 
				<td>Thành tiền : '.number_format($thanhtien).'VNĐ'.'</td>	
			</tr>';		
	}else{	
		echo 'Giỏ hàng của bạn trống !';
	}
 	echo'</table>';
  ?>
            <div align="center" style="padding-top:20px;"> 
              <a href="index.php"><input style="height:30px;" type="submit" name="" value="Tiếp tục mua hàng"></a>
                <?php
					if(isset($_SESSION['product'])){
				?>
                 	<a href="index.php?xem=xulyphieudat"><input style="height:30px;" type="submit" name="" value="Thanh toán "></a>
				<?php
					}
				?>
        	</div>
</div>
<?php
	//var_dump($ab=$_SESSION['product']); echo "<br>";	
	
	//echo $ab[0]['TenSP'];
	//var_dump($_SESSION['dangnhap']);
	
	//echo count($ab);
?>