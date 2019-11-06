<?php
	@session_start();
	$sql_ctmsp="select * from sanpham where MaSP='$_GET[id]'";
	$query_ctmsp=mysqli_query($conn,$sql_ctmsp);
	$dong_ctmsp=mysqli_fetch_array($query_ctmsp);	
?>
<div class="chitietsanpham" align="center"</div>
<p style="text-align:center;color:#000; background:#699; padding:10px; size:auto;"><font color="#FFF"size="+2" >
Thông tin chi tiết sản phẩm</font></p>
<form  action="update_cart.php?id=<?php echo $dong_ctmsp['MaSP'] ?>" method="post" enctype="multipart/form-data">
<table style="margin-top:30px" width="540" height="633" height:"700px" border="1" bordercolor="#CCCCCC">
  <tr>
    <td width="302" rowspan="6"><img src="Admin/modular/QuanlySP/hinhanh/<?php echo $dong_ctmsp['AnhSP']?>" width="297" height="276"></td>
    <td width="228"><strong>Tên:</strong><?php echo $dong_ctmsp['TenSP']?></td>
  </tr>
  <tr>
    <td><strong>Giá:</strong><?php echo $dong_ctmsp['Dongia']?></td>
  </tr>
  <tr>
    <td><strong>Size:</strong><?php echo $dong_ctmsp['Size']?></td>
  </tr>
  <tr>
    <td height="25"><strong>Màu sắc:</strong><?php echo $dong_ctmsp['Mau']?></td>
  </tr>
  <tr>
    <td height="29"><strong>Chất liệu:</strong><?php echo $dong_ctmsp['ChatLieu']?></td>
  </tr>
  <tr>
    <td height="180"><strong>Số lượng còn :<?php echo $dong_ctmsp['Soluong']?> </strong></td>
  </tr>
  <tr height="50px">
    <td height="84" colspan="2"><strong>Nhập size :</strong>
      <input type="text" name="size" size="3" value="1" /></td>
  </tr>
  <tr height="50px">
    <td height="84" colspan="2"><p><strong>Nhập số lượng:</strong>
      <input type="text" name="soluong" size="3" value="1" />
    </p></td>
  </tr>
  <tr height="50px">
    <td height="84" colspan="2"><strong>Mô tả sản phẩm :</strong><?php echo $dong_ctmsp['Mota']?></td>
  </tr>
  
  <tr>
    <td height="41" colspan="2" ><div align="center">
     <input type="submit" name="Mua" value="Mua ngay" style="height:50px; width:120px"></div></td>
  </tr>
</table>
</form>

