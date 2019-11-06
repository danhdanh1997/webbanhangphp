<?php
 $sql="select * from nhanvien where MaNV=MaNV";
 $run=mysqli_query($conn,$sql);
 $dong=mysqli_fetch_array($run, MYSQLI_ASSOC);
?>
<form action="modular/QuanlyNV/Xuly.php?MaSP=<?php echo $dong['MaNV']?>" method="post" enctype="multipart/form-data">
<table width="100%"  border="1">
  <tr>
    <td colspan="2"><p align="center">Sửa SP</p></td>
  </tr>
   <tr>
    <td >Mã NV</td>
    <td  ><input type="text" name="MaNV" value="<?php echo $dong['MaNV']?>"></td>
  </tr
  ><tr>
    <td >Tên NV</td>
    <td><input type="text" name="TenNV" value="<?php echo $dong['TenNV']?>"> </td>
  </tr>
  <tr>
    <td >Cmnd </td>
    <td><input type="text" name="Cmnd"  value="<?php echo $dong['Cmnd']?>"></td>
  </tr>
   <tr>
    <td >Sdt</td>
    <td><input type="text" name="Sdt"  value="<?php echo $dong['Sdt']?>"></td>
  </tr>
  <tr>
    <td >Bophan</td>
    <td><input type="text" name="Bophan"  value="<?php echo $dong['Bophan']?>"></td>
  </tr>
   <tr>
    <td >Mucluong</td>
    <td><input type="text" name="Mucluong"  value="<?php echo $dong['Mucluong']?>"></td>
  </tr>
  <tr>
    <td >Matkhau</td>
    <td><input type="text" name="Matkhau"  value="<?php echo $dong['Matkhau']?>"></td>
  </tr>
  <tr>
    <td colspan="2"><div align="center">
      <input type="submit" name="Sua" id="Sua" value="Sửa">
    </div></td>
  </tr>
</table>
</form>
