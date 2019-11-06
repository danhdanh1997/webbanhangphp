<form action="modular/QuanlySP/Xuly.php" method="post" enctype="multipart/form-data">
<table width="100%" border="1">
  <tr>
    <td colspan="2"><p align="center">Thêm SP</p></td>
  </tr>
  <tr>
    <td>Mã SP</td>
   <td><input  type="text" name="MaSP"></td>
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
    <td >Tên SP</td>
    <td><input type="text" name="TenSP"> </td>
  </tr>
  <tr>
    <td >Màu Sắc</td>
    <td><input type="text" name="Mau"> </td>
  </tr>
  <tr>
    <td >Size</td>
    <td><input type="text" name="Size"> </td>
  </tr>
  <tr>
    <td >Chất Liệu</td>
    <td><input type="text" name="ChatLieu"> </td>
  </tr>
  <tr>
    <td >Ảnh SP </td>
    <td><input type="file" name="AnhSP"></td>
  </tr>
   <tr>
    <td >Số lượng</td>
    <td><input type="text" name="Soluong"></td>
  </tr>
  <tr>
    <td >Khuyến mãi</td>
    <td><input type="text" name="Khuyenmai"></td>
  </tr>
  <tr>
    <td >Mô tả</td>
	<td><textarea name="Mota"></textarea></td>
  </tr>
  <tr>
    <td >Đơn giá</td>
    <td><input type="text" name="Dongia"></td>
  </tr>
  <tr>
    <td colspan="2"><div align="center">
      <input type="submit" name="Them" id="Them" value="Thêm">
    </div></td>
  </tr>
</table>
</form>
