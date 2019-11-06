<?php
	include('../config.php');
	$MaSP=$_POST['MaSP'];
	$MaDM=$_POST['MaDM'];
	$MaNCC=$_POST['MaNCC'];
	$TenSP=$_POST['TenSP'];
	$Mau=$_POST['Mau'];
	$Size=$_POST['Size'];
	$ChatLieu=$_POST['ChatLieu'];
	$AnhSP=$_FILES['AnhSP']['name'];
	$AnhSP_tmp=$_FILES['AnhSP']['tmp_name'];
	move_uploaded_file($AnhSP_tmp,'hinhanh/'.$AnhSP);
	$Soluong=$_POST['Soluong'];
	$Khuyenmai=$_POST['Khuyenmai'];
	$Mota=$_POST['Mota'];
	$Dongia=$_POST['Dongia'];
	$id=$_GET['id'];
		if(isset($_POST['Them']))
	{
		//thêm 
		$sql="insert into sanpham (MaSP,MaDM,MaNCC,TenSP,Mau,Size,ChatLieu,AnhSP,Soluong,Khuyenmai,Mota,Dongia)
		 values('$MaSP','$MaDM','$MaNCC','$TenSP','$Mau','$Size','$ChatLieu','$AnhSP','$Soluong','$Khuyenmai','$Mota','$Dongia')";
		 mysqli_query($conn,$sql);
		 header('location:../../index.php?Quanly=QuanlySP&action=Them');
	}
	
	  elseif (isset($_POST['Sua'])) {
		  //sửa
		   $sql="update sanpham set MaSP='$MaSP', MaDM='$MaDM',MaNCC='$MaNCC',TenSP='$TenSP',Mau='$Mau',Size='$Size',ChatLieu='$ChatLieu',AnhSP='$AnhSP',Soluong='$Soluong',
		   Khuyenmai='$Khuyenmai', Mota='$Mota',Dongia='$Dongia' where MaSP='$id'";
          mysqli_query($conn, $sql);
           header('location:../../index.php?Quanly=QuanlySP&action=Sua&id='.$id);
 	}
    else{
		//xoá
  $sql=" delete  from sanpham where MaSP='$id'";
  mysqli_query($conn,$sql);
  header('location:../../index.php?Quanly=QuanlySP&action=Them');
   }
?>


