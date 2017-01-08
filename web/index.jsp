<%-- 
    Document   : index
    Created on : Jul 1, 2016, 12:44:18 PM
    Author     : NisalSP9
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="shortcut icon" type="image/png" href="IMAGE/favicon.ico"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <script src="JSs/jquery.min.js"></script>
        <script src="JSs/bootstrap.min.js"></script>

        <link rel="stylesheet" type="text/css" href="CSS/mainStyle.css">
        <link rel="stylesheet" type="text/css" href="CSS/bootstrap.min.css">

        <script src="js/jquery.autocomplete.js"></script>  
        <link rel="stylesheet" type="text/css" href="css/jquery.autocomplete.css" />
        <title>Flagship ERP</title>

    </head>



    <body class="cfs">

        <div class="container-fluid">

            <div class="row">

                <div class="Title col-xs-12"><p class="Letter">Flagship ERP</p></div>

            </div>
        </div>
        <div class="container-fluid">

            <div class="row">

                <div class="TitelRedSpecfront col-xs-12"></div>

            </div>
        </div>  


        <div class="container-fluid">

            <div class="row">

                <form class="col-xs-12" action="purchase_order_home.jsp">

                    <input class="TextFields col-xs-12"   placeholder="Username" id="username" name="username" required/><br/>

                    <input class="TextFields col-xs-12" type="password" placeholder="Password" id="password" name="password" required/><br/>

                    <input hidden type="submit">


                </form>

                
                
            </div>
        </div>


    </body>
</html>
