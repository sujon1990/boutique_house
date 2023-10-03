<?php
    include "includes/db.php";
    include "functions/functions.php";
?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Shop</title>
    <link rel="shortcut icon" type="image/x-icon" href="images/14.png"/>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="styles/mystyle.css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    <link href="images/18.png" rel="icon"/>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src=""></script>
</head>
<body>
<!-- Main Container Start-->
     <div class="container-fluid container1">
          <div class="row row1">
                <div class="col-md-12 rowcols">
                    <!-- Header Start -->
                    <div class="header_wrapper">
                         <a href="index.php"><img src="images/index1.png" alt="" style="padding-left:18px;float:left;width:350px;height:120px;" class="img-responsive"/></a>
                        <img src="images/index.png" alt="" style="float:right;width:960px;height:120px;margin-right: 11px;" class="img-responsive"/> 
                     </div>
                    <!-- Header End -->
                </div>
          </div>
          <div class="row row2">
                <div class="col-md-12 rowcols" style="margin-bottom: -10px;">
                <!-- Nav bar start-->
                     <div id="navbar">
                     <ul>
                        <li><a href="index.php">Home </a></li>
                        <li><a href="all_products.php">All Products <span class=""></span></a></li>
                        <li><a href="http://localhost/myshop/customer_register.php">Sign Up </a></li>
                        <li><a href="http://localhost/myshop/cart.php">Shopping Cart</a></li>
                        <li><a href="contact.php">Contact Us</a></li>
                     </ul>
                     <form action="result.php" method="get" enctype="multipart/form-data">
                     <div class="form-group" id="search">
                       <input type="text" name="user_query" placeholder="So, what are you wishing for today?" class="search_box" />
                        <input type="submit" name="search" value="Search" class="btn btn-primary" style="color:white;"/>
                     </div>

                     </form>
                     </div>
                <!-- Nav bar end-->
                </div>
          </div>
          <div class="row row3">
                <div class="col-md-12 rowcols">
                    <div class="content_wrapper">
                            <div class="col-md-2" id="left_sidebar">
                                <div id="sidebar_title">Categories</div>
                                <ul id="cats">
                                    <?php getCats(); ?>
                                </ul>

                                <div id="sidebar_title">Brands</div>
                                <ul id="cats">
                                    <?php
                                        getBrands();
                                    ?>
                                </ul>
                            </div>
                            <div class="col-md-10" id="right_content">
                                <div id="headline">
                                    <div id="headline_content">
                                        <b>Welcome Guest!</b>
                                        <b style="color: yellow">Shopping Cart:</b>
                                        <span>-Items: - Price:</span>
                                    </div>
                                </div>
                                <div id="product_box">
                                      <?php

                                      if(isset($_GET['search'])){
                                        $user_query=$_GET['user_query'];
                                        $get_products=$con->prepare("SELECT * FROM products WHERE product_keywords like '%$user_query%'");
                                        $get_products->execute();
                                        while($row_products=$get_products->fetch())
                                        {
                                             $pro_id=$row_products['product_id'];
                                             $pro_title=substr($row_products['product_title'],0,15);
                                             $pro_cat=$row_products['cat_id'];
                                             $pro_brand=$row_products['brand_id'];
                                             $pro_desc=$row_products['product_desc'];
                                             $pro_price=$row_products['product_price'];
                                             $pro_image=$row_products['product_img1'];

                                             echo "
                                               <div id='single_product'>
                                                    <h5 style='text-transform:uppercase;font-weight:bold;'>$pro_title</h5>
                                                    <img src='admin_area/product_images/$pro_image' style='width:180px;height:180px;'/><br> <br>
                                                    <b>Price: $pro_price.00 BDT</b>
                                                      <br><br>
                                                    <a style='float:left' class='btn btn-primary' href='details.php?pro_id=$pro_id'>Details</a>
                                                    <a style='float:right' class='btn btn-success' href='index.php?add_cart=$pro_id'> Add to Cart</a>
                                               </div>
                                             ";
                                        }
                                        }
                                      ?>
                                </div>
                            </div>
                    </div>
                </div>
          </div>
          <div class="row row4">
                <div class="col-md-12 rowcols">
                    <div class="footer">&copy Copyright 2017 | By Sumaiya Sultana</div>
                </div>
          </div>
     </div>
<!-- Main Container End-->
</body>
</html>