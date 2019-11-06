<?php
 $sql="select * from danhmuc where MaDM='$_GET[id]'";
 $run=mysqli_query($conn,$sql);
 $dong=mysqli_fetch_array($run, MYSQLI_ASSOC);
?>
<form action="modular/QuanlyDM/Xuly.php?id=<?php echo $dong['MaDM'] ?>" method="post" enctype="multipart/form-data">
<table width="100%"  border="1">
  <tr>
    <td colspan="2"><p align="center">Sửa DM</p></td>
  </tr>   
 <tr>
    <td >Mã DM</td>
    <td><input type="char" name="MaDM" value="<?php echo $dong['MaDM']?>"> </td>
  </tr>
  <tr>
    <td >Tên DM </td>
    <td><input type="varchar" name="TenDM"  value="<?php echo $dong['TenDM']?>"></td>
  </tr>
  <tr>
    <td colspan="2"><div align="center">
      <input type="submit" name="Sua" id="Sua" value="Sửa">
    </div></td>
  </tr>
</table>
</form>
