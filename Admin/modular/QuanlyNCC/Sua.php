<?php
 $sql="select * from nhacungcap where MaNCC='$_GET[id]'";
 $run=mysqli_query($conn,$sql);
 $dong=mysqli_fetch_array($run, MYSQLI_ASSOC);
?>
<form action="modular/QuanlyNCC/Xuly.php?id=<?php echo $dong['MaNCC'] ?>"
 method="post" enctype="multipart/form-data">
<table width="100%"  border="1">
  <tr>
    <td colspan="2"><p align="center">Sửa NCC</p></td>
  </tr>   
 <tr>
    <td >Mã NCC</td>
    <td><input type="text" name="MaNCC" value="<?php echo $dong['MaNCC']?>"> </td>
  </tr>
  <tr>
    <td >Tên NCC </td>
    <td><input type="text" name="TenNCC"  value="<?php echo $dong['TenNCC']?>"></td>
  </tr>
  <tr>
    <td colspan="2"><div align="center">
      <input type="submit" name="Sua" id="Sua" value="Sửa"></div>
    </td>
  </tr>
</table>
</form>
