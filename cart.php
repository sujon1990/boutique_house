<?php
    session_start();
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
                                <?php  cart(); ?>
                                    <div id="headline_content">
                                         <?php
                                            if(isset($_SESSION['customer_email']))
                                            {
                                                echo "<b style='color:yellow;font-weight:bold;'>Welcome: </b>".$_SESSION['customer_email']." <b style='color:yellow;font-weight:bold;'>Your</b> ";
                                            }
                                            else
                                            {
                                                echo "<b style='color:yellow;font-weight:bold;'>Welcome Guest!</b>";
                                            }

                                        ?>

                                        <b style="color: yellow">Shopping Cart:</b>
                                        <span> <b>Total Items: </b><?php total_items();?>,  <b>Total Price: </b><?php total_price(); ?>.00 BDT</span>
                                        <a href="index.php" class="btn btn-info" style="color: white;font-weight:bold;padding:2px;padding-left:5px;padding-right:5px;">Back To Shop</a>
                                    <?php
                                       if(!isset($_SESSION['customer_email']))
                                       {
                                           echo "<a href='checkout.php' class='btn btn-warning' style='color: white;font-weight:bold;padding:2px;padding-left:5px;padding-right:5px;'>Login</a>";
                                       }
                                       else
                                       {
                                           echo "<a href='logout.php' class='btn btn-warning' style='color: white;font-weight:bold;padding:2px;padding-left:5px;padding-right:5px;'>Logout</a>";
                                       }
                                    ?>
                                    </div>

                                </div>

                                <div id="product_box">
                                <form action="" method="post" enctype="multipart/form-data">
                                         <table class="table table-bordered table-responsive" >
                                               <tr>
                                                <td colspan="5"><h2>Update Your cart or checkout</h2></td>
                                               </tr>
                                               <tr>
                                                    <th>Remove</th>
                                                    <th>Product(s)</th>
                                                    <th>Quantity</th>
                                                    <th>Total Price</th>
                                               </tr>
                                                    <?php
                                                    $total=0;
                                                         global $con;
                                                         $ip=getIp();
                                                         $sel_price=$con->prepare("SELECT * FROM cart WHERE ip_add='$ip' ");
                                                         $sel_price->execute();
                                                         while($p_price=$sel_price->fetch())
                                                         {
                                                            $pro_id=$p_price['p_id'];
                                                            $pro_price=$con->prepare("SELECT * FROM products WHERE product_id='$pro_id' ") ;
                                                            $pro_price->execute();
                                                            while($pp_price=$pro_price->fetch())
                                                            {
                                                                $product_price=array($pp_price['product_price']);
                                                                $product_title=$pp_price['product_title'];
                                                                $product_image=$pp_price['product_img1'];
                                                                $single_price=$pp_price['product_price'];
                                                                $values=array_sum($product_price);
                                                                $total+=$values;

                                                    ?>


                                               <tr>
                                                    <td><input type="checkbox" name='remove[]' value="<?php echo $pro_id; ?>" class="form-control"/></td>
                                                    <td class="product_title"><?php echo $product_title; ?><br>
                                                    <img src="admin_area/product_images/<?php echo $product_image; ?>" style="width:60px;height:60px;" />
                                                    </td>
                                                    <td><select name="qty" id="">
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5</option>
                                                    </select></td>
                                                    <?php
                                                    if(isset($_POST['update_cart']))
                                                    {
                                                    $p_id=$pro_id;
                                                      $qty=$_POST['qty'];

                                                      $update_qty=$con->prepare("UPDATE cart SET qty='$qty' WHERE p_id='$p_id' ");
                                                      $update_qty->execute();
                                                      $_SESSION['qty']=$qty;
                                                      $total=$total*$qty;
                                                    }
                                                    ?>


                                                    <td style="text-align: right"><?php echo $single_price; ?>.00 BDT</td>
                                               </tr>

                                               <?php } } ?>



                                                <tr>
                                                    <td></td>
                                                    <td></td>
                                                    <td><b>SUB TOTAL:</b></td>
                                                    <td style="text-align: right"><b><?php echo $total; ?>.00 BDT</b><br>
                                                        <b><?php echo $total/80; ?> USD</b>
                                                    </td>
                                               </tr>

                                               <tr style="">
                                                   <td colspan=""><input type="submit" name="remove_cart" value="Remove Product" class="btn btn-success" style=""/></td>
                                                  <td><input type="submit" name="update_cart" value="Update Cart" class="btn btn-success" style=""/></td>
                                                  <td><input type="submit" name="continue" value="Continue Shopping" class="btn btn-success"/></td>
                                                   <td><a href="checkout.php" class="btn btn-success">Checkout</a></td>
                                               </tr>
                                         </table>
                                     </form>
                                     <?php
                                   /* function upcart()
                                    {*/

                                        $ip=getIp();
                                        if(isset($_POST['remove_cart']))
                                        {
                                            @$r=$_POST['remove'];
                                            foreach((array)$r as $removeid)
                                            {
                                               $deleteproduct=$con->prepare("DELETE FROM cart WHERE p_id='$removeid' AND ip_add='$ip' ");
                                               $deleteproduct->execute();
                                               if($deleteproduct)
                                               {
                                                    echo"<script>alert('Product Updated Successfully!')</script>";
                                                   echo("<script>window.open('cart.php','_self')</script>");

                                               }
                                            }
                                        }

                                        if(isset($_POST['continue']))
                                        {
                                           echo("<script>window.open('index.php','_self')</script>");
                                        }

                                       /*echo $upcart=upcart();
                                    }*/

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