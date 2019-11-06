<?php
	@session_start();
  if (isset($_SESSION['dangnhap'])) {
    // da dang nhap
    header("location: index.php");
  }
	if(isset($_POST['dangnhap'])){
		$email=$_POST['Email'];
		$matkhau=$_POST['Matkhau'];
		$sql_dangnhap="select * from khachhang where Email='$email' and Matkhau='$matkhau'";
		$run_dangnhap=mysqli_query($conn,$sql_dangnhap);
		$dangnhap=mysqli_fetch_array($run_dangnhap);
		$count_dangnhap=mysqli_num_rows($run_dangnhap);
		if($count_dangnhap==0){
			echo '<script>alert("Sai tài khoản hoặc mật khẩu ! Xin mời nhập lại .")</script>';
		}else{
      $_SESSION['dangnhap']=$dangnhap['TenKH'];
			header('location:index.php');
		}
	}
?>
<div class="dangnhap" align="center"> 
<form  style="padding-top:20px"action="" method="post" enctype="multipart/form-data">
<table bgcolor="#699" width="460" height="300">
  <tr>
    <td colspan="2" align="center"><h2>Xin mời bạn đăng nhập hệ thống !</h2></td>
  </tr>
  <tr>
    <td width="83" >EMAIL : </td>
    <td width="365" ><input type="text" name="Email" style="height:30px; width:280px" ></td>
  </tr>
  <tr>
    <td width="83">PASS :</td>
    <td width="365"><input type="password" name="Matkhau"  style="height:30px; width:280px"></td>
  </tr>
  <tr>
    <td colspan="2"><div align="center"> 
    <a href="">
    <input type="submit" name="dangnhap" id="dangnhap" value="LOGIN" style="height:30px">
    </a>
    </div>
    </td>
  </tr>
</table>
</form>
</div>
