<?php
	@session_start();
	if(isset($_POST['dangky'])){
		$tenkh=$_POST['TenKH'];
		$matkhau=$_POST['Matkhau'];
		$email=$_POST['Email'];
		$diachi=$_POST['Diachi'];
		$sdt=$_POST['Sdt'];
		$sql_dangky="insert into khachhang (TenKH,Matkhau,Email,Diachi,Sdt) value('$tenkh','$matkhau','$email','$diachi','$sdt')";
		$run_query=mysqli_query($conn,$sql_dangky);
		if($run_query){
			header('location:index.php?xem=dangnhap');
		}else{
			header('location:index.php?xem=dangky');
		}
	}
?>

<div style="margin-top:10px"><font size="+1" color="#000000">
<center>
<form action="index.php?xem=dangky" method="post" enctype="multipart/form-data">
<table bgcolor="#699" width="530" height="375">
  <tr>
    <td colspan="2"><div align="center"><h2>ĐĂNG KÝ THÀNH VIÊN</h2></div></td>
  </tr>
  <tr>
    <td width="116" height="59" >Họ và tên :</td>
    <td width="402" ><input type="text" name="TenKH"  style="height:30px; width:360px"></td>
  </tr>
  <tr>
    <td height="57">Email :</td>
    <td><input type="text"name=" Email"  style="height:30px ; width:360px"></td>
  <tr>
    <td height="61">Mật khẩu :</td>
    <td><input type="password" name="Matkhau"style="height:30px ; width:360px"></td>
  </tr>
  <tr>
    <td height="53">Địa chỉ :</td>
    <td><input type="text" name="Diachi"  style="height:30px ; width:360px"></td>
  </tr>
   <tr>
  </tr>
    <td height="50">Số điện thoại :</td>
    <td><input type="text" name="Sdt" style="height:30px ; width:360px"></td>
  </tr>
  <tr>
    <td height="48" colspan="2"><div align="center">
     <input type="submit" name="dangky" value="ĐĂNG KÝ" style="height:30px">
    </div></td>
  </tr>
</table>
</form>
</center>
</font>
</div>
