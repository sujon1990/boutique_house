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
                                        <b>Welcome Guest!</b>
                                        <b style="color: yellow">Shopping Cart:</b>
                                        <span>-<b>Total Items:</b><?php total_items();?>  <b>Total Price:</b><?php total_price(); ?>.00 BDT</span>
                                        <a href="cart.php" class="btn btn-info" style="color: white;font-weight:bold;padding:2px;padding-left:5px;padding-right:5px;">Go To Cart</a>
                                    </div>
                                </div>

                                <DIV id="product_box">
                                <div id="customer_login">
                                    <form action="customer_register.php" method="post" enctype="multipart/form-data">
                                        <table>
                                            <tr>
                                                <td colspan="2"><h2>Create an Account</h2></td>
                                            </tr>
                                            <tr>
                                                <td><p> Name:</p></td>
                                                <td><input type="text" name="c_name" class="form-control" required="required"/></td>
                                            </tr>
                                            <tr>
                                                <td><p> Email:</p></td>
                                                <td><input type="email" name="c_email" class="form-control" required="required"/></td>
                                            </tr>
                                            <tr>
                                                <td><p> Password:</p></td>
                                                <td><input type="password" name="c_pass" class="form-control" required="required"/></td>
                                            </tr>
                                            <tr>
                                                <td><p> Country:</p></td>
                                                <td>
                                                    <select name="c_country" id="" class="form-control" style="width:300px;">
                                                        <option value="">Select a Country</option>
                                                        <option value="Afganisthan">Afganisthan</option>
                                                        <option value="Bangladesh">Bangladesh</option>
                                                        <option value="India">India</option>
                                                        <option value="Japan">Japan</option>
                                                        <option value="UnitedStatus">United Status</option>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><p> City:</p></td>
                                                <td><input type="text" name="c_city" class="form-control" required="required"/></td>
                                            </tr>

                                            <tr>
                                                <td><p> Contact Number:</p></td>
                                                <td><input type="text" name="c_contact" class="form-control" required="required"/></td>
                                            </tr>
                                            <tr>
                                                <td><p> Address:</p></td>
                                                <td><input type="text" name="c_address" class="form-control" required="required"/></td>
                                            </tr>

                                            <tr>
                                                <td><p> Image:</p></td>
                                                <td><input type="file" name="c_image" required="required"/></td>
                                            </tr>

                                            <tr>
                                                <td colspan="2"><input type="submit" style="width:200px;" name="register" value="Create Account" class="btn btn-success"/></td>
                                            </tr>
                                        </table>
                                    </form>
                                    </div>
                                </DIV>
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

<?php
    if(isset($_POST['register']))
    {
        global $con;
        $ip=getIp();
        $c_name=$_POST['c_name'];
        $c_email=$_POST['c_email'];
        $c_pass=$_POST['c_pass'];

        $c_country=$_POST['c_country'];
        $c_city=$_POST['c_city'];
        $c_contact=$_POST['c_contact'];
        $c_address=$_POST['c_address'];
        $c_image_name=$_FILES['c_image']['name'];
        $c_image_tmp=$_FILES['c_image']['tmp_name'];

        move_uploaded_file($c_image_tmp,"customer/customer_images/$c_image_name");

        $insert25=$con->prepare("INSERT into customers(customer_ip,customer_name,customer_email,customer_pass,customer_country,customer_city,customer_contact,customer_address,customer_image) VALUES('$ip','$c_name','$c_email','$c_pass','$c_country','$c_city','$c_contact','$c_address','$c_image_name')");
        $insert25->execute();



        $sel_cart=$con->prepare("SELECT * FROM cart WHERE ip_add='$ip' ");
        $sel_cart->execute();
        $check_cart=$sel_cart->rowCount();
        if($check_cart==0)
        {
            $_SESSION['customer_email']=$c_email;
            echo "<script>alert('Account has been created successfully,Thanks!')</script>";
            echo "<script>window.open('customer/my_account.php','_self')</script>";
        }
        else{
            $_SESSION['customer_email']=$c_email;
            echo "<script>alert('Account has been created successfully,Thanks!')</script>";
            echo "<script>window.open('checkout.php','_self')</script>";
        }
    }
?>