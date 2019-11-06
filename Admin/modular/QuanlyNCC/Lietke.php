<?php
 $sql="select * from nhacungcap order by MaNCC desc";
 $run=mysqli_query($conn,$sql);
?>
<table width="100%" border="1">
  <tr style="background-color:#33CCFF">
    <td><strong>Mã NCC</strong></td>
    <td><strong>Tên NCC</strong></td>
    <td colspan="2"><strong>Quản lý</strong></td>
  </tr>
  <?php	
   while ($dong=mysqli_fetch_array($run)){
  ?>
  <tr>
    <td><?php echo $dong['MaNCC']?></td>
    <td><?php echo $dong['TenNCC']?></td>
    <td><a href="index.php?Quanly=QuanlyNCC&action=Sua&id=<?php echo $dong['MaNCC']?>">Sửa</a></td>
    <td><a href="modular/QuanlyNCC/Xuly.php?id=<?php echo $dong['MaNCC']?>">Xoá</a></td>
  </tr> 
  <?php
 }
 ?>
 </table> 
