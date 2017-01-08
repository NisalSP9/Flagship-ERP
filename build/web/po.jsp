<%-- 
    Document   : po
    Created on : Jul 1, 2016, 1:10:34 PM
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

                <div class="TitelRedSpec col-xs-12"><p class="LetterOnRed">New Purchase Order</p></div>

            </div>
        </div>  

        <div class="container-fluid">

            <div class="col-sm-1"></div><!--this is to make alinments-->

            <div class="col-sm-2">

                <form action="add_new_ops.jsp">                       
                    <input class="buttonMatter btn btn-group-justified" type="image" src="IMAGE\doc.png" alt="Submit" />
                </form>

                <p class="ManageUser">New</p>

            </div>

            <div class="col-sm-2">

                <form action="update_pos.jsp">                       
                    <input class="buttonMatter btn btn-group-justified" type="image" src="IMAGE\edit.png" alt="Submit"/>
                </form>

                <p class="ManageUser">Modify</p>

            </div>


            <div class="col-sm-2">

                <form action="delete_pos.jsp">                       
                    <input class="buttonMatter btn btn-group-justified" type="image" src="IMAGE\delete.png" alt="Submit"/>
                </form>

                <p class="ManageUser">Remove</p>

            </div>

            <div class="col-sm-2">

                <form action="viewAllPos.jsp">                       
                    <input class="buttonMatter btn btn-group-justified" type="image" src="IMAGE\view-list.png" alt="Submit"/>
                </form>

                <p class="ManageUser">View</p>

            </div>

            <div class="col-sm-2">

                <form action="QTYReject.jsp">                       
                    <input class="buttonMatter btn btn-group-justified" type="image" src="IMAGE\view-list.png" alt="Submit"/>
                </form>

                <p class="ManageUser">Rejected</p>

            </div>


        </div>








    </body>


</html>
