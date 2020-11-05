<?php 
 $PROID =   $_GET['id']; 
$query = "SELECT * FROM `tblpromopro` pr , `tblproduct` p , `tblcategory` c
            WHERE pr.`PROID`=p.`PROID` AND  p.`CATEGID` = c.`CATEGID`  AND p.`PROID`=" . $PROID;
            $mydb->setQuery($query);
            $cur = $mydb->loadResultList();


  foreach ($cur as $result) { 
   
 ?>

       
   <form   method="POST" action="cart/controller.php?action=add">
        
        <div class="row">

            <div class="col-md-8">
            <div class="row">
                <div class="col-m-12">
                    <div class="col-md-8 responsive">
                          <img width="402" class="img-portfolio " height="300"  src="<?php echo web_root . 'admin/products/'.  $result->IMAGES;?>" alt="">
               
                    </div>
                    </div>
                
            </div>
            
       
            </div>

     
            <div class="col-md-4">
              <input type="hidden" name="PROPRICE" value="<?php  echo $result->PRODISPRICE; ?>">
              <input type="hidden" id="PROQTY" name="PROQTY" value="<?php  echo $result->PROQTY; ?>">

              <input type="hidden" name="PROID" value="<?php  echo $result->PROID; ?>">
                <!-- <h3><?php echo $result->PRONAME ; ?></h3> -->
                <p><?php echo   $result->CATEGORIES;?></p>
                
                <ul>
                    <!-- <li>Model - <?php echo $result->PROMODEL; ?></li> -->
                    <li>Type - <?php echo $result->PRODESC; ?></li>
                    <li>Price - &#8360 <?php echo $result->PROPRICE; ?></li>
                    <?php if($result->PRODISCOUNT>0){ ?>
                    <li>Discount - <?php echo $result->PRODISCOUNT; ?> % </li> 

                    <li>Discounted Price - &#8360 <?php echo $result->PRODISPRICE; ?> </li> 
                    <?php } ?>
                    <li>Available Quantity - <?php echo $result->PROQTY; ?></li>
                </ul>

                 <button  type="submit"  class="btn btn-pup btn-sm"  name="btnorder">Order Now!</button>
            </div>
<?php } ?>       
        </div>
       
</form>

<?php 
$query = "SELECT * FROM `tblpromopro` pr , `tblproduct` p , `tblcategory` c
            WHERE pr.`PROID`=p.`PROID` AND  p.`CATEGID` = c.`CATEGID`  AND `CATEGORIES`='" . $result->CATEGORIES . "' limit 4";
            $mydb->setQuery($query);
            $cur = $mydb->loadResultList(); 
?>
        
        <div class="row">

            <div class="col-lg-12">
                <h3 class="page-header">Related Products</h3>
            </div>
<?php

  foreach ($cur as $result) { 

?>
            <div class="col-sm-3 col-xs-6">
                <a href="index.php?q=single-item&id=<?php echo $result->PROID; ?>">
                    <img class="img-hover img-related" width="135px" height="90px"  src="<?php echo web_root.'admin/products/'.$result->IMAGES;?>" alt="">
                </a><br/>
               <a href="index.php?q=single-item&id=<?php echo $result->PROID; ?>"><b><?php echo  $result->PRODESC ; ?></b></a>
            </div>

<?php } ?>


        </div>