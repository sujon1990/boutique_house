<?php

    include "includes/db.php";

?>

<div id="customer_login">
    <form action="" method="post">
        <table class="">
            <tr>
                <td colspan="2"><h2>Login or Register to Buy!</h2></td>
            </tr>
            <tr>
                <td class="text"><p>Email:</p></td>
                <td><input type="email" name="email" placeholder="Enter Email..." class="form-control" required="required"/></td>
            </tr>
            <tr>
                <td class="text"><p>Password:</p></td>
                <td><input type="password" name="pass" placeholder="Enter Password..." class="form-control" required="required"/></td>
            </tr>

            <tr>
                <td colspan="2"><input type="submit" name="login" value="Login" class="btn btn-success login" /></td>
            </tr>
            <tr>
                <td class="forgot_pass" colspan="2"><a href="checkout.php?forgot_pass">Forgot Password?</a></td>
            </tr>
            <tr>
                <td colspan="2"><h2 style="text-align:center"><a href="customer_register.php" class="btn btn-danger">New? Register Here</a></h2></td>
            </tr>
        </table>

    </form>
</div>

<?php
if(isset($_POST['login']))
{
    $c_email=$_POST['email'];
    $c_pass=$_POST['pass'];

    $sel_c=$con->prepare("SELECT * FROM customers WHERE customer_pass='$c_pass' AND customer_email='$c_email' ");
    $sel_c->execute();
    $check_customer=$sel_c->rowCount();
    if($check_customer==0)
    {
        echo "<script>alert('Password or email is incorrect,plz try again!')</script>";
        exit();
    }
    $ip=getIp();
    $sel_cart=$con->prepare("SELECT * FROM cart WHERE ip_add='$ip' ");
    $sel_cart->execute();
    $check_cart=$sel_cart->rowCount();
    if($check_customer>0 AND $check_cart==0)
    {
            $_SESSION['customer_email']=$c_email;
            echo "<script>alert('You logged in successfully,Thanks!')</script>";
            echo "<script>window.open('customer/my_account.php','_self')</script>";
    }
    else
    {
            $_SESSION['customer_email']=$c_email;
            echo "<script>alert('You logged in successfully,Thanks!')</script>";
            echo "<script>window.open('checkout.php','_self')</script>";
    }
}
?>