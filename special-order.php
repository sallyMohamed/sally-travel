<?php
session_start();
include("functions/functions.php");
include("includes/db.php");
global $con;
if (isset($_POST['special'])) {
    $ip = getIp();
    $name = $_POST['name'];
    $email = $_POST['email'];
    $country = $_POST['country'];
    $contact = $_POST['contact'];
    $address = $_POST['address'];


    $insert_c = "INSERT INTO orders (name,email,country,contact,address) VALUES ('$name','$email','$country','$contact','$address')";

    $run_c = mysqli_query($con, $insert_c);

    $sel_cart = "SELECT * FROM cart WHERE ip_add='$ip'";

    $run_cart = mysqli_query($con, $sel_cart);

    $check_cart = mysqli_num_rows($run_cart);

    if ($check_cart == 0) {
        $_SESSION['customer_email'] = $email;
        echo "<script>alert('Order has been created successfully. Thanks!')</script>";
       
    } else {
        $_SESSION['customer_email'] = $email;
        echo "<script>alert('Order has been created successfully. Thanks!')</script>";
        
    }

}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Sally Travel : order</title>
    <link rel="stylesheet" href="styles/style.css" media="all">
    <style type="text/css">
        #fixm {
            font-size: 15px;
            padding: 4px;
            font-family: arial;
        }

        #fixi {
            font-size: 14px;
            font-family: arial;
        }

        #btn {
            font-family: arial;
            font-size: 14px;
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            padding: 10px 10px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            transition-duration: 0.4s;
            cursor: pointer;
            background-color: #32E875;
            color: black;
        }

        #btn:hover {
            background-color: #4CAF50;
            color: white;
        }
    </style>
</head>
<body>
    <!--Main container starts here-->
    <div class="main_wrapper">
        <!--Header starts here-->
        <?php include 'includes/header.php'; ?>
        <!--Header ends here-->
        <!--Navbar starts here-->
        <?php include 'includes/navbar.php'; ?>
        <!--Navbar ends here-->
        <!--Content starts here-->
        <div class="content_wrapper">
            <!--left-sidebar starts-->
            <?php include "includes/left-sidebar.php"; ?>
            <!--left-sidebar ends-->
            <div id="content_area">
                <?php cart(); ?>
                <div id="shopping_cart">
                        <span style="float: right;font-size: 18px;padding: 5px;line-height: 40px;">Welcome Guest! <b
                                    style="color: yellow;">Shopping Cart-</b> Total Items: <?php total_items(); ?> Total Price: <?php total_price(); ?> <a
                                    href="cart.php" style="color: yellow;">Go to Cart</a></b></span>
                </div>
                <form action="special-order.php" method="post" enctype="multipart/form-data">
                    <table align="center" width="750" style="margin-top: 20px;">
                        <tr align="center">
                            <td colspan="6">
                                <h2 style="margin-bottom: 15px; font-family: Cambria;">Add Special order</h2>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" id="fixm">Your Name*:</td>
                            <td><input id="fixi" type="text" name="name" required=""></td>
                        </tr>
                        <tr>
                            <td align="right" id="fixm">Your Email*:</td>
                            <td><input type="email" name="email" required=""></td>
                        </tr>
                       
                      
                      
                        <tr>
                            <td align="right" id="fixm"> Country you want to visit*:</td>
                            <td>
                            <select name="country" required="">Select a*
                                    <option>Egypt</option>
                                    <option>Kuwit</option>
                                    <option>Qatar</option>
                                    <option>Saudi Arabia</option>
                                    <option>Egypt</option>
                                    <option>Switzerland</option>
                                    <option>France</option>
                                    <option>Brazil</option>
                                    <option>Spain</option>
                                    <option>France</option>
                                    <option>Switzerland</option>
                                    <option>Kuwit</option>
                                    <option>Egypt</option>
                                    <option>Kuwit</option>
                                    <option>Saudi Arabia</option>
                                    <option>Qatar</option>
                                </select>
                            </td>
                        </tr>
                       
                        <tr>
                            <td align="right" id="fixm">Your Contact:*</td>
                            <td><input id="fixi" type="text" name="contact" required=""></td>
                        </tr>
                        <tr>
                            <td align="right" id="fixm">Your Address:*</td>
                            <td><textarea id="fixi" type="text" name="address" required=""></textarea></td>
                        </tr>
                        <tr align="center">
                            <td colspan="6"><input id="btn" type="submit" name="special" value="add new order">
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
        <!--Content ends here-->
        <!--footer starts-->
        <?php include "includes/footer.php"; ?>
        <!--footer ends-->
    </div>
    <!--Main container ends here-->
</body>
</html>
