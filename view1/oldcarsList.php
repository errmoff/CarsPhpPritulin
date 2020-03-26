 <?php
 ob_start();
 // if(isset($_SESSION['UserName'])){
	//  if($_SESSION['UserId'] == $id){
		  
echo '<h2 class="bodyHeaderMain">Cars</h2>';
		  
 foreach($oldcarsList as $Car){


	 


	 echo '<div class="col-xl-4 col-md-6">';
         echo '<div class="product">';
         echo '<div class="product_image"><img src="images/product_2.jpg" alt=""></div>';
         echo '<div class="product_content">';
         echo '<div>';
         echo '<div>';
         echo '<div class="product_name"><a href="product.html">'.$Car['CarMark'].'</a></div>';
         echo '<div class="product_name"><a href="product.html">'.$Car['CarModel'].'</a></div>';
         echo '<div class="Img1"><img src="'.$Car['CarImg1'].'"></div>';
         echo '</div>';
         echo '</div>';
         echo '<div class="ml-auto text-right">';
         echo '<div class="rating_r rating_r_4 home_item_rating"><i></i><i></i><i></i><i></i><i></i></div>';
         echo '<div class="product_price text-right">'.$Car['CarPrice'].'<span>€</span></div>';
         echo '</div>';
         echo '</div>';
         echo '<div class="product_buttons">';
         echo '<div class="text-right d-flex flex-row align-items-start justify-content-start">';
         echo '<div class="product_button product_fav text-center d-flex flex-column align-items-center justify-content-center">';
         echo '<div><div><img src="images/heart_2.svg" class="svg" alt=""><div>+</div></div></div>';
         echo '</div>';
      
         echo '</div>';
         echo '</div>';
         echo '</div>';
         echo '</div>';
         echo '</div>';
         echo '</div>';
 
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