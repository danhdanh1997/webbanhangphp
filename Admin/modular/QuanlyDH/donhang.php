<?php 
@session_start(); 
$sql= "select * from chitiethoadon ";
$query=mysqli_query($conn,$sql);
?>
<form action="index.php?Quanly=donhang" method="post" enctype="multipart/form-data">
<table width="100%" border="1">
  <tr style="height:30px" bgcolor="#33CCFF" align="center">
    <td>Mã HD</td>
    <td>Mã SP</td>
    <td>Số lượng</td>
    <td>Tổng tiền</td>
    <td>Tình trạng </td>
    <td colspan="2">Quản lý</td>
   </tr>
 <?php
 while($dong=mysqli_fetch_assoc($query)){
 $MaHD=$dong['MaHD'];
 $Soluong=$dong['Soluong'];
 $MaSP= $dong['MaSP'];
?>
<tr style="height:30px" align="center">
    <td><?php echo $MaHD ?></td>
    <td><?php echo $MaSP ?></td>
    <td><?php echo $Soluong?></td>
    <td><?php echo $dong['Tongtien']?></td>
    <td><?php 
  if($dong['Tinhtrang']==0){
	  echo  '<input type="submit" name='.$MaHD.' value="Chưa giao">';
	  }
   else 
	  echo  '<p> Đã giao</p>';
 	 ?></td>
     <td><a href="index.php?Quanly=donhang&id=<?php echo $dong['MaHD']?>">Xoá</a></td>
     <td><a href="index.php?Quanly=inhoadon&id=<?php echo $dong['MaHD']?>"><img src="/webbanhang/images/in.jpg" width="50" height="50"></a></td>
</tr>
<?php
if(isset($_POST[$MaHD])){
	$sql_upHD="UPDATE chitiethoadon SET `Tinhtrang`=1 WHERE MaHD= $MaHD "; 
	$query_upHD=mysqli_query($conn,$sql_upHD); 
	header('location:index.php?Quanly=donhang');
	//
	$sql_slsp="select * from sanpham where MaSP='$MaSP'";
	$query_slsp=mysqli_query($conn,$sql_slsp);
	$dong_slsp=mysqli_fetch_assoc($query_slsp);
	$TongSL=$dong_slsp['TongSL'];
 	$Soluongmoi= $TongSL-$Soluong; 
	//
	$sql_upsp="update sanpham SET `TongSL`= $Soluongmoi WHERE MaSP=$MaSP ";
	$query_upsp=mysqli_query($conn,$sql_upsp);
}
}
?>

</table>
</form>
<?php 
	//xoa phieudat
 if(isset($_GET['id'])){
	  $id=$_GET['id'];
	  $sql=" delete from chitiethoadon where MaHD='$id'";
  mysqli_query($conn,$sql);
	 }
 
?>
