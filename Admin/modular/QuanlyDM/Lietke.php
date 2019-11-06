<?php
 $sql="select * from danhmuc order by MaDM desc";
 $run=mysqli_query($conn,$sql);
?>
<table width="100%" border="1">
  <tr style="background-color:#33CCFF">
    <td><strong>Mã DM</strong></td>
    <td><strong>Tên DM</strong></td>
    <td colspan="2"><strong>Quản lý</strong></td>
  </tr>
  <?php	
   while ($dong=mysqli_fetch_array($run)){
  ?>
  <tr>
    <td><?php echo $dong['MaDM']?></td>
    <td><?php echo $dong['TenDM']?></td>
    <td><a href="index.php?Quanly=QuanlyDM&action=Sua&id=<?php echo $dong['MaDM']?>">Sửa</a></td>
    <td><a href="modular/QuanlyDM/Xuly.php?id=<?php echo $dong['MaDM']?>">Xoá</a></td>
  </tr> 
  <?php
 }
 ?>
 </table> 
