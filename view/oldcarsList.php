 <?php
 ob_start();
 // if(isset($_SESSION['UserName'])){
	//  if($_SESSION['UserId'] == $id){
		  
echo '<h2 class="bodyHeaderMain">Cars</h2>';
		  
 foreach($oldcarsList as $Car){


	 
echo '

	 <div id="Layer1" style="position:absolute;text-align:left;left:445px;top:164px;width:1350px;height:347px;z-index:21;">
<div id="Layer2" style="position:absolute;text-align:left;left:1060px;top:0px;width:290px;height:347px;z-index:5;">
<div id="Layer3" style="position:absolute;text-align:left;left:20px;top:201px;width:251px;height:48px;z-index:2;">
<div id="wb_Text3" style="position:absolute;left:24px;top:13px;width:202px;height:22px;text-align:center;z-index:0;">
<span style="color:#C0FFA0;font-family:Arial;font-size:19px;"><strong>CALL PRODAVEC</strong></span></div>
</div>
<div id="Layer4" style="position:absolute;text-align:left;left:20px;top:258px;width:251px;height:48px;z-index:3;">
<div id="wb_Text4" style="position:absolute;left:24px;top:13px;width:202px;height:22px;text-align:center;z-index:1;">
<span style="color:#C0FFA0;font-family:Arial;font-size:19px;"><strong>MORE INFO</strong></span></div>
</div>
<div id="wb_Text5" style="position:absolute;left:20px;top:15px;width:234px;height:37px;z-index:4;">
<span style="color:#000000;font-family:Arial;font-size:32px;"><strong>19999.22</strong></span></div>
</div>
<div id="wb_Image1" style="position:absolute;left:0px;top:0px;width:425px;height:347px;z-index:6;">
<img src="images/1HgPuKkTAnU.jpg" id="Image1" alt=""></div>
<div id="wb_Text1" style="position:absolute;left:441px;top:15px;width:581px;height:37px;z-index:7;">
<span style="color:#00C024;font-family:Arial;font-size:32px;"><strong>MARK MODEL</strong></span></div>
<div id="wb_Text2" style="position:absolute;left:443px;top:68px;width:579px;height:54px;z-index:8;">
<span style="color:#008054;font-family:Arial;font-size:16px;"><strong>DESCRIPTION:</strong></span><span style="color:#000000;font-family:Arial;font-size:16px;">GSGAGAGAG</span><span style="color:#008054;font-family:Arial;font-size:16px;"><strong><br>PRICE:</strong></span><span style="color:#000000;font-family:Arial;font-size:16px;">FFSFSFSFS</span><span style="color:#008054;font-family:Arial;font-size:16px;"><strong><br></strong></span></div>
</div>
 

  
  ';
 }
 /* }else
  {
	echo '<p class="correctLogin">You do not have permission to view this profile! <p>';
	 echo '<p style="text-align:center;"><a href="profile" class="backToLogin">My profile</a></p>';
}
}
   else {
	 echo '<p class="correctLogin">You didnt come in!</p>';
	 echo '<p style="text-align:center;"><a href="logReg" class="backToLogin">Log in</a></p>';
 }
  
  */
 $content=ob_get_clean();
 include_once 'view/layout.php';
 ?>