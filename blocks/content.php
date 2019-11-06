<div class="content">
		<div class="left">
        <?php
			include $_SERVER['DOCUMENT_ROOT'] .'/webbanhangphp/blocks/danhsach.php';
		?>
        </div>
        <div class="right">
 	<?php
		if(isset($_GET['xem'])){
			$tam=$_GET['xem'];
		} else { $tam='';}
		if($tam=='chitietsanpham'){
			include('blocks/main/chitietsanpham.php');}	
		elseif($tam=='chitietmotsanpham'){
			include('blocks/main/chitietmotsanpham.php');}	
		elseif($tam=='giohang'){
			include('blocks/main/giohang.php');}	
		elseif(isset($_POST['search'])){
			include('blocks/main/timkiem.php');}	
		elseif($tam=='dangky'){
			include('blocks/main/dangky.php');}
		elseif($tam=='huongdan'){
			include('blocks/main/huongdan.php');}
		elseif($tam=='chonsize'){
			include('blocks/main/chonsize.php');}
		elseif($tam=='lienhe'){
			include('blocks/main/lienhe.php');}
		elseif($tam=='camon'){
			include('blocks/main/camon.php');}
		elseif($tam=='gioithieu'){
			include('blocks/main/gioithieu.php');}
		elseif($tam=='xulyphieudat'){
			include('blocks/main/xulyphieudat.php');}
		elseif($tam=='dangnhap'){
			include('blocks/main/dangnhap.php');}
		elseif ($tam=='dangxuat') {
			include('blocks/main/dangxuat.php');}	
		else{	
			include('blocks/main/sanphamall.php');}
					
	?>
    </div>
    
 </div>
 <div class="clear"></div>