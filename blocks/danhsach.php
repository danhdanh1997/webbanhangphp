<?php 
$sql_danhmuc="select * from danhmuc";
$query_dm=mysqli_query($conn,$sql_danhmuc);
?>

<p style="text-align: center; color:#FFF;background:#699;padding:14px"><font color="#FFF"size="+1" > DANH MỤC SẢN PHẨM </font></p>
            <div class="danhsachsanpham">
            	<ul>
<?php
            while($dong_dm=mysqli_fetch_array($query_dm)){
			?>
            
            
                <ul>
                 <div >
                    <?php while($dong_sp=mysqli_fetch_array($query_dm))
					{					
					?>
            		<li><a href="index.php?xem=chitietsanpham&id=<?php echo $dong_sp['MaDM']?>">
					<font size="+1"><?php echo $dong_sp['TenDM']?></font>
                    </a></li>
            		<?php } ?>
                  </div>
                  </ul>
              <?php
			  }
		       ?>              </ul>
</div>
            <p style="text-align: center; color:#FFF;background: #699;padding:14px"><font color="#FFF"size="+1" > HỖ TRỢ TRỰC TUYẾN </font></p>
            <div class="danhsachsanpham">
            	<ul>
            		<li style="color:#F60">• Tư vấn bán hàng 1 :</li>
            		<li></li>	
                    <li><a href="#">Mrs. Lien : (08) 2242345</a></li>
                    <li></li>	
                    <li style="color:#F60">• Tư vấn bán hàng 2 :</li>
                    <li></li>	
                    <li><a href="#">Mr. Nam : (08) 2242344</a></li>
                    <li></li>	
                    <li style="color:#F60">• Email liên hệ : </li>
                    <li></li>	
                    <li><a href="#">shose@gmail.com </a></li>	                    	
                 </ul>
        	</div>
             
            
             