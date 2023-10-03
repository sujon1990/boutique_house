<?php
    session_start();
 ?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Payment Success</title>
</head>
<body>
   <h2>Wecome <?php echo @$_SESSION['customer_email'];?></h2>
   <h3>Your Payment Was successfull, please go to your account</h3>
   <h3><a href="http://www.ainayem/myshop/customer/my_account.php">Go to your account</a></h3>
</body>
</html>