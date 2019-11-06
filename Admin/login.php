<?php
	include('modular/config.php');
	session_start();
		if(isset($_POST['login'])){
		$maqtv=$_POST['MaQTV'];
		$matkhau=$_POST['Matkhau'];
		$sql="select * from quantrivien where MaQTV='$maqtv' and Matkhau='$matkhau' limit 1";
		$query=mysqli_query($conn,$sql);
		$nums=mysqli_num_rows($query);
		if($nums>0){
			$_SESSION['login']=$maqtv;
			header('location:index.php');
		}else{
			header('location:login.php');
		}
	}
?>
<div class="login" align="center"> 
<form  style="padding-top:20px"action="" method="post" enctype="multipart/form-data">
<table bgcolor="#6699CC" width="500" height="300">
  <tr>
    <td colspan="2" align="center"><h2>ĐĂNG NHẬP HỆ THỐNG</h2></td>
  </tr>
  <tr>
    <td width="154" >Mã QTV </td>
    <td width="334" ><input type="text" name="MaQTV" style="height:30px" ></td>
  </tr>
  <tr>
    <td width="154">Mật khẩu</td>
    <td width="334"><input type="password" name="Matkhau"  style="height:30px"></td>
  </tr>
  <tr>
    <td colspan="2"><div align="center"> 
    <a href="">
    <input type="submit" name="login" id="login" value="LOGIN" style="height:30px">
    </a>
    </div>
    </td>
  </tr>
</table>
</form>
</div>
