<?php
    include "includes/db.php";
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
                $product_name=$pp_price['product_title'];
                $product_id=$pp_price['product_id'];
                $values=array_sum($product_price);

                $total+=$values;
            }
         }

?>

<div id="payment">
    <h2 style="text-align: center">Pay Now With Paypal</h2>
    <form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post">
  <input type="hidden" name="cmd" value="_xclick">
  <input type="hidden" name="business" value="nayem6004@gmail.com">
  <input type="hidden" name="item_name" value="<?php echo $product_name; ?>">
  <input type="hidden" name="item_number" value="<?php echo $product_id;?>">
  <input type="hidden" name="amount" value="<?php echo $total/80; ?>">
  <input type="hidden" name="tax" value="1">
  <input type="hidden" name="quantity" value="1">
  <input type="hidden" name="no_note" value="1">
  <input type="hidden" name="currency_code" value="USD">
  <input type="hidden" name="return" value="http://www.ainayem.com/all_project/paypal_success.php"/>
  <input type="hidden" name="cancel_return" value="http://www.ainayem.com/all_project/paypal_cancel.php" />

  <!-- Enable override of buyers's address stored with PayPal . -->
  <input type="hidden" name="address_override" value="1">
  <!-- Set variables that override the address stored with PayPal. -->
  <input type="hidden" name="first_name" value="John">
  <input type="hidden" name="last_name" value="Doe">
  <input type="hidden" name="address1" value="345 Lark Ave">
  <input type="hidden" name="city" value="San Jose">
  <input type="hidden" name="state" value="CA">
  <input type="hidden" name="zip" value="95121">
  <input type="hidden" name="country" value="US">
  <input type="image" name="submit"
    src="https://www.paypalobjects.com/en_US/i/btn/btn_buynow_LG.gif"
    alt="PayPal - The safer, easier way to pay online">
</form>


</div>