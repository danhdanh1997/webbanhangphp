<?php
 $sql="select * from sanpham where MaSP='$_GET[id]'";
 $run=mysqli_query($conn,$sql);
 $dong=mysqli_fetch_array($run, MYSQLI_ASSOC);
?>
<form action="modular/QuanlySP/Xuly.php?id=<?php echo $dong['MaSP'] ?>" method="post" enctype="multipart/form-data">
<table width="100%"  border="1">
  <tr>
    <td colspan="2"><p align="center">Sửa SP</p></td>
  </tr>
   <tr>
    <td >Mã SP</td>
    <td  ><input type="text" name="MaSP" value="<?php echo $dong['MaSP']?>"></td>
  </tr>
   <?php 
	$sql=" select * from danhmuc";
	$run=mysqli_query($conn,$sql);
  ?>
  <tr>
    <td >Mã DM</td>
    <td><select name="MaDM">
    <?php
	while($dong=mysqli_fetch_array($run)){
	?>
    <option value=" <?php echo $dong['MaDM'] ?>"><?php echo $dong['MaDM'] ?></option>
    <?php
	}
	?>
    </select>
    </td>
  </tr>
   <?php 
	$sql=" select * from nhacungcap";
	$run=mysqli_query($conn,$sql);
  ?>
  <tr>
    <td >Mã NCC</td>
    <td><select name="MaNCC">
    <?php
	while($dong=mysqli_fetch_array($run)){
	?>
    <option value=" <?php echo $dong['MaNCC'] ?>"><?php echo $dong['MaNCC'] ?></option>
    <?php
	}
	?>
    </select>
    </td>
  </tr>
  <tr>
    <td >Tên SP </td>
    <td><input type="text" name="TenSP"  value="<?php echo $dong['TenSP']?>"></td>
    <tr>
    <td >Màu Sắc </td>
    <td><input type="text" name="Mau"  value="<?php echo $dong['Mau']?>"></td>
    <tr>
    <td >Size </td>
    <td><input type="text" name="Size"  value="<?php echo $dong['Size']?>"></td>
    <tr>
    <td >Chất Liệu </td>
    <td><input type="text" name="ChatLieu"  value="<?php echo $dong['ChatLieu']?>"></td>
  </tr>
  <tr>
    <td >Ảnh SP </td>
    <td><input type="file" name="AnhSP">
    <img src="modular/QuanlySP/hinhanh/<?php echo $dong['AnhSP']?>" width="60" height="60" /> </td>
  </tr>
   <tr>
    <td >Số lượng</td>
    <td><input type="text" name="Soluong"  value="<?php echo $dong['Soluong']?>"></td>
  </tr>
  <tr>
    <td >Khuyến mãi</td>
    <td><input type="text" name="Khuyenmai"  value="<?php echo $dong['Khuyenmai']?>"></td>
  </tr>
  <tr>
    <td >Mô tả</td>
    <td><textarea name="Mota"><?php echo $dong['Mota']?></textarea></td>
  </tr>
  <tr>
    <td>Đơn giá</td>
    <td><input type="text" name="Dongia"  value="<?php echo $dong['Dongia']?>"></td>
  </tr>
  <tr>
    <td colspan="2"><div align="center">
      <input type="submit" name="Sua" id="Sua" value="Sửa">
    </div></td>
  </tr>
</table>
</form>
