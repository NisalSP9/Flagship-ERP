<%-- 
    Document   : add_new_position
    Created on : Jul 13, 2016, 9:23:04 AM
    Author     : aDMIN
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
        <div class="container">

            <div class="row">

                <div class="col-xs-12">

                    <form action="PositionController">

                        <input type="text" class="TextFields-s col-xs-12" name="name" placeholder="New Position"/>
                        <input type="submit" hidden>

                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
