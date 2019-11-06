<?php
 $sql="select * from sanpham order by MaSP desc";
 $run=mysqli_query($conn,$sql);
?>
<table width="100%" border="1">
  <tr style="background-color:#33CCFF">
    <td>Mã SP</td>
    <td>Mã DM</td>
    <td>Mã NCC</td>
    <td>Tên SP</td>
    <td>Màu Sắc</td>
    <td>Size</td>
    <td>Chất Liệu</td>
    <td>Ảnh SP</td>
    <td>Số lượng</td>
    <td>Khuyến mãi</td>
    <td>Mô tả</td>
    <td>Đơn giá</td>
    <td colspan="2"><strong>Quản lý</strong></td>
  </tr>
  <?php	
   while ($dong=mysqli_fetch_array($run)){
  ?>
  <tr>
    <td><?php echo $dong['MaSP']?></td>
    <td><?php echo $dong['MaDM']?></td>
    <td><?php echo $dong['MaNCC']?></td>
    <td><?php echo $dong['TenSP']?></td>
    <td><?php echo $dong['Mau']?></td>
    <td><?php echo $dong['Size']?></td>
    <td><?php echo $dong['ChatLieu']?></td>
    <td><img src="modular/QuanlySP/hinhanh/<?php echo $dong['AnhSP']?>" width="60" height="60"/></td>
    <td><?php echo $dong['Soluong']?></td>
    <td><?php echo $dong['Khuyenmai']?></td>
    <td><?php echo $dong['Mota']?></td>
    <td><?php echo $dong['Dongia']?></td>
    <td><a href="index.php?Quanly=QuanlySP&action=Sua&id=<?php echo $dong['MaSP']?>">Sửa</a></td>
    <td><a href="modular/QuanlySP/Xuly.php?id=<?php echo $dong['MaSP']?>">Xoá</a></td>
  </tr> 
  <?php
 }
 ?>
 </table> 
