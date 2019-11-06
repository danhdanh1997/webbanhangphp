<?php
@session_start();
if(!isset($_SESSION['dangnhap'])) {
	header("location: index.php?xem=dangnhap");
	die();
}
if(isset($_SESSION['product'])){
	$MaKH=$_SESSION['dangnhap'];
	$sqlPD="insert into phieudat(MaKH) values('$MaKH')";
	$pm=mysqli_query($conn,$sqlPD);
	$sql="SELECT * FROM phieudat ORDER BY MaPD DESC LIMIT 1";
	$select=mysqli_query($conn,$sql);
	$MaPD12=mysqli_fetch_assoc($select);
	$MaPD=$MaPD12['MaPD'];
	for($i=0;$i<count($_SESSION['product']);$i++){
		$MaSP=$_SESSION['product'][$i]['id'];
		$sl=$_SESSION['product'][$i]['soluong'];
		$giatien=$_SESSION['product'][$i]['Dongia'];
		$sqlCTPD="INSERT INTO chitietphieudat(MaPD,MaSP,Soluong,Giatien,Tinhtrang) values('{$MaPD}','{$MaSP}','{$sl}','{$giatien}',0)";
		$a=mysqli_query($conn,$sqlCTPD);
	}
	if($a){
		echo '<div align="center">';
		
		echo '<br><h2><font color="#699"> Chúc mừng bạn đã đặt hàng thành công.</font></h2>';
		echo '<br><h2><font color="#699"> Nhân viên sẽ liên lạc để chốt hàng trong thời gian sớm nhất .</font></h2>';
		echo '<br><h2><font color="#699"> Cảm ơn bạn đã tin dùng sản phẩm tại cửa hàng của chúng tôi . Hẹn gặp lại!</font></h2>';
		
		echo '</div>';
		
	}
	else
		echo "LỖI";
}

?>

		