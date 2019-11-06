<?php 
 $sql="select * from hoadon where MaHD=$_GET[id]";
 $query=mysqli_query($conn,$sql);
 while($dong=mysqli_fetch_array($query)){
	 $MaHD=$dong['MaHD'];
	 $MaKH=$dong['MaKH'];
	 $MaNV=$dong['MaNV'];
	 $MaNL=$dong['Ngaylap'];
 }
?>

<div class="hoadon" align="center" style="padding-top:30px;">
<table width="624" border="3">
  <tr>
    <td colspan="3">Shop giày thời trang SHOSE STORE</td>
  </tr>
  <tr>
    <td colspan="3">Địa chỉ:47 lê Bá Trinh-Hải Châu-Đà Nẵng</td>
  </tr>
  <tr>
    <td colspan="3">Tel: 0343507730</td>
  </tr>
  <tr style="height:30px">
    <td colspan="3"><strong><p align="center"><font size="+2">HOÁ ĐƠN BÁN HÀNG</font></p></p></strong></td>
  </tr>
  <tr style="height:30px">
    <td width="105">Mã HD:<?php echo $MaHD ?></td>
    <td width="226">Nhân viên:<?php echo $MaNV ?></td>
    <td width="267">Ngày lập: <?php echo $MaNL?></td>
  </tr>
  <tr style="height:30px">
    <td colspan="2">Khách hàng:<strong><?php echo $MaKH ?></strong></td>
    <td>Địa chỉ: </td>
  </tr>
  <tr>
  <?php 
  $sql_="select * from chitiethoadon where MaHD= $_GET[id]";
  $query_=mysqli_query($conn,$sql_);
  while($dong_=mysqli_fetch_array($query_)){
	  $MaSP=$dong_['MaSP'];
	  $Soluong=$dong_['Soluong'];
	  $Tongtien=$dong_['Tongtien'];
  }
  ?>
    <td colspan="3"><table width="500" border="1" align="center">
  		<tr style="height:30px">
    		<td>Tên SP</td>
    		<td>Số lượng</td>
    		<td>Tổng tiền</td>	
  		</tr>
  		<tr style="height:30px">
    		<td><?php echo $MaSP ?></td>
   		 	<td><?php echo $Soluong ?></td>
    		<td><?php echo $Tongtien ?></td>
        </tr>
		</table>
	</td>
  </tr>
  <tr>
    <td colspan="3"><em><p align="center">Cảm ơn quý khách.Hẹn gặp lại!</p></em></td>
  </tr>
</table>
</div>