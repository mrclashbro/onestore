<section id="slider">
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
          <div id="slider-carousel" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
              <li data-target="#slider-carousel" data-slide-to="1"></li>
              <li data-target="#slider-carousel" data-slide-to="2"></li>
            </ol>
            
            <div class="carousel-inner">
              <div class="item active">
                <div class="col-sm-6">
                  <h1><span>One</span>Store</h1>
                  <p>Buy With Confidence</p>
                 
                </div>
                <div class="col-sm-6">
                  <img src="images/home/banner.jpg" class="girl img-responsive" alt="" />
                </div>
              </div>
              <div class="item">
                <div class="col-sm-6">
                <h1><span>One</span>Store</h1>
                  <p>Driving innovation, customer friendly solutions and service excellence</p>
                 
                </div>
                <div class="col-sm-6">
                  <img src="images/home/grocery.png" class="girl img-responsive" alt="" />
                </div>
              </div>
              
              <div class="item">
                <div class="col-sm-6">
                <h1><span>One</span>Store</h1>
                  <p>We are proud to say we take a sustainability-based approach to product sourcing, minimising the impact of our carbon footprint, whilst ensuring fair labour practices are at the forefront of all stages of our supply chain.</p>
                 
                </div>
                <div class="col-sm-6">
                  <img src="images/home/sh.jpg" class="girl img-responsive" alt="" />
                </div>
              </div>
              
            </div>
            
            <a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
              <i class="fa fa-angle-left"></i>
            </a>
            <a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
              <i class="fa fa-angle-right"></i>
            </a>
          </div>
          
        </div>
      </div>
    </div>
  </section>

  <section>
    <div class="container">
      <div class="row">
        <div class="col-sm-3">
            <?php include 'sidebar.php'; ?>
        </div>
        
        <div class="col-sm-9 padding-right">
          <div class="features_items">
            <h2 class="title text-center">Features Items</h2>

            <?php

            $query = "SELECT * FROM `tblpromopro` pr , `tblproduct` p , `tblcategory` c
            WHERE pr.`PROID`=p.`PROID` AND  p.`CATEGID` = c.`CATEGID`  AND PROQTY>0 ";
            $mydb->setQuery($query);
            $cur = $mydb->loadResultList();
           
            foreach ($cur as $result) { 

              ?>
               <form   method="POST" action="cart/controller.php?action=add">
            <input type="hidden" name="PROPRICE" value="<?php  echo $result->PROPRICE; ?>">
            <input type="hidden" id="PROQTY" name="PROQTY" value="<?php  echo $result->PROQTY; ?>">

            <input type="hidden" name="PROID" value="<?php  echo $result->PROID; ?>">
            <div class="col-sm-4">
              <div class="product-image-wrapper">
                <div class="single-products">
                    <div class="productinfo text-center">
                      <img src="<?php  echo web_root.'admin/products/'. $result->IMAGES; ?>" alt="" />
                      <h2>&#8360 <?php  echo $result->PRODISPRICE; ?></h2>
                      <p><?php  echo    $result->PRODESC; ?></p>
                      <button type="submit" name="btnorder" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                    </div>
                    <div class="product-overlay">
                      <div class="overlay-content">
                        <h2>&#8360 <?php  echo $result->PRODISPRICE; ?></h2>
                        <p><?php  echo    $result->PRODESC; ?></p>
                       <button type="submit" name="btnorder" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                      </div>
                    </div>
                </div>
                <div class="choose">
                  <ul class="nav nav-pills nav-justified">
                    <li>
                              <?php     
                            if (isset($_SESSION['CUSID'])){  

                              echo ' <a href="'.web_root. 'customer/controller.php?action=addwish&proid='.$result->PROID.'" title="Add to wishlist"><i class="fa fa-plus-square"></i>Add to wishlist</a></a>
                            ';

                             }else{
                               echo   '<a href="#" title="Add to wishlist" class="proid"  data-target="#smyModal" data-toggle="modal" data-id="'.  $result->PROID.'"><i class="fa fa-plus-square"></i>Add to wishlist</a></a>
                            ';
                            }  
                            ?>

                    </li> 
                  </ul>
                </div>
              </div>
            </div>
          </form>
       <?php  } ?>
            
          </div><!--features_items--> 
          
          <div class="recommended_items"><!--recommended_items-->
            <h2 class="title text-center">recommended items</h2>
            
            <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
              <div class="carousel-inner">
                <div class="item active"> 
                         <?php 
                    $query = "SELECT * FROM `tblpromopro` pr , `tblproduct` p , `tblcategory` c
                    WHERE pr.`PROID`=p.`PROID` AND  p.`CATEGID` = c.`CATEGID`  AND PROQTY>0 limit 3 ";
                    $mydb->setQuery($query);
                    $cur = $mydb->loadResultList();
                   
                    foreach ($cur as $result) { 
                  ?>
                      <form   method="POST" action="cart/controller.php?action=add">
            <input type="hidden" name="PROPRICE" value="<?php  echo $result->PROPRICE; ?>">
            <input type="hidden" id="PROQTY" name="PROQTY" value="<?php  echo $result->PROQTY; ?>">

            <input type="hidden" name="PROID" value="<?php  echo $result->PROID; ?>">
                  <div class="col-sm-4">
                    <div class="product-image-wrapper">
                      <div class="single-products">
                        <div class="productinfo text-center">
                          <img src="<?php  echo web_root.'admin/products/'. $result->IMAGES; ?>" alt="" />
                          <h2>&#8360 <?php  echo $result->PRODISPRICE; ?></h2>
                          <p><?php  echo    $result->PRODESC; ?></p>
                           <button type="submit" name="btnorder" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                        </div>
                        
                      </div>
                    </div>
                  </div>
                </form>
                  <?php } ?>
                </div>
                <div class="item">  
                  <?php 
                    $query = "SELECT * FROM `tblpromopro` pr , `tblproduct` p , `tblcategory` c
                    WHERE pr.`PROID`=p.`PROID` AND  p.`CATEGID` = c.`CATEGID`  AND PROQTY>0 limit 3,6";
                    $mydb->setQuery($query);
                    $cur = $mydb->loadResultList();
                   
                    foreach ($cur as $result) { 
                  ?>
                      <form   method="POST" action="cart/controller.php?action=add">
            <input type="hidden" name="PROPRICE" value="<?php  echo $result->PROPRICE; ?>">
            <input type="hidden" id="PROQTY" name="PROQTY" value="<?php  echo $result->PROQTY; ?>">

            <input type="hidden" name="PROID" value="<?php  echo $result->PROID; ?>">
                  <div class="col-sm-4">
                    <div class="product-image-wrapper">
                      <div class="single-products">
                        <div class="productinfo text-center">
                          <img src="<?php  echo web_root.'admin/products/'. $result->IMAGES; ?>" alt="" />
                          <h2>&#8360 <?php  echo $result->PRODISPRICE; ?></h2>
                          <p><?php  echo    $result->PRODESC; ?></p>
                           <button type="submit" name="btnorder" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                        </div>
                        
                      </div>
                    </div>
                  </div>
                </form>
                  <?php } ?>
                </div>
              </div>
               <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
                <i class="fa fa-angle-left"></i>
                </a>
                <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
                <i class="fa fa-angle-right"></i>
                </a>      
            </div>
          </div><!--/recommended_items-->
          
        </div>
      </div>
    </div>
  </section>