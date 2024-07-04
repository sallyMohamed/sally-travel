<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Contact Us</title>
    <link rel="stylesheet" href="styles/style.css" media="all">
    <style>
        #guides {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            border: 1px solid black;
            width: 740px;
        }

        #guides th {
            text-align: left;
            background-color: #3A6070;
            color: #fff;
            padding: 4px;
        }

        #guides td {
            border: 1px solid black;
            padding: 4px;
            text-align: left;
        }

        #guides tr:nth-child(odd) td {
            background-color: #E7EDF0;
        }

        #regoff {
            font-size: 15px;
        }

        #headoff {
            font-size: 16px;
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
            <div class="sidebar">
                <div id="sidebar_title"><b>Contact Us</b></div>
                <br><br><br><br><br><br><br>
                <div id="sidebar_title"><b>24/7 Hotline</b></div>
                <div id="sidebar_title"><b>Dial: 16505</b></div>
            </div>
            <div id="content_area">
                <div id="packages_box">
                    <br>
                    <h2 style="font-family: Cambria;">You Can contact me using</h2>
                    <br>
                    <table id="guides" align="center" bgcolor="#EEE0CB">
                        <tr align="center" bgcolor="#5FCEE8">
                            <th id="thfix">Email</th>
                            <th id="thfix">whats app number</th>
                           <th id="thfix"> github </th>
                        </tr>
                     
                            <tr align="left">
                                <td style="width: 150px;">engsallycis@gmail.com</td>
                                <td style="width: 160px;">+201015987079</td>
                                <td style="width: 100px;"> https://github.com/sallyMohamed</td>
                            </tr>
                    </table>

                </div>
            </div>
        </div>
        <!--Content ends here-->
        <!--footer starts-->
        <?php include "includes/footer.php";?>
        <!--footer ends-->
    </div>
    <!--Main container ends here-->
</body>
</html>
