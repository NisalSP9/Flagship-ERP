<%-- 
    Document   : print_po_home
    Created on : Jul 27, 2016, 4:08:19 PM
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

                <div class="TitleIndex col-xs-12"><p class="Letter">Flagship ERP</p></div>

            </div>
        </div>    



        <nav class="navbar navbar-default" style="margin-bottom: 0px;">
            <div class="container-fluid">


                <div class="navbar-header">
                    <a href="purchase_order_home.jsp" class="navbar-brand">Purchase Order</a>
                </div>

            </div>
        </nav>

        <div class="container-fluid">

            <div class="row">

                <div class="TitelRedSpec col-xs-12"><p class="LetterOnRed">Purchase Print Approval</p></div>

            </div>
        </div>  


        <div class="container">
            
            <div class="row">
                
                <div class="col-sm-3"></div><!--this is to make alinments-->
               
                <div class="col-sm-2">

                    <form action="view_ready_print.jsp">                       
                        <input class="buttonMatter btn btn-group-justified" type="image" src="IMAGE\1.png" alt="Submit"/>
                    </form>

                    <p class="ManageUser">Pending Print Request</p>

                </div>

                <div class="col-sm-2">

                    <form action="">                       
                        <input class="buttonMatter btn btn-group-justified" type="image" src="IMAGE\logo.png" alt="Submit"/>
                    </form>

                    <p class="ManageUser">Modify</p>

                </div>




                <div class="col-sm-2">

                    <form action="">                       
                        <input class="buttonMatter btn btn-group-justified" type="image" src="IMAGE\Actions-edit-find-user-icon.png" alt="Submit"/>
                    </form>

                    <p class="ManageUser">View</p>

                </div>

            </div>
        </div>
    </body>


</html>
