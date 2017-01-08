<%-- 
    Document   : client
    Created on : Jul 1, 2016, 1:14:42 PM
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

                <!--Logout -->
                <div class="navbar-header">
                    <a href="index.jsp" class="navbar-brand">Hi Nisalsp9</a>
                </div>


                <!-- Menu Items -->
                <div>
                    <ul class="nav navbar-nav">
                        <li><a href="purchase_order_home.jsp">Purchase Order</a></li>
                        <li class="active"><a href="client.jsp">Client</a></li>
                        <li><a href="update.jsp">Updates</a></li>
                        <li><a href="bs1.jsp">BS1</a></li>
                        <li><a href="bs2.jsp">BS2</a></li>
                        <li><a href="employee.jsp">Employee</a></li>
                        <li><a href="manage_supplier.jsp">Supplier</a></li>
                        <li><a href="manage_users.jsp">Users</a></li>
                    </ul>
                </div>

            </div>



        </nav>

        <div class="container-fluid">

            <div class="row">

                <div class="TitelRedSpec col-xs-12"><p class="LetterOnRed">Client</p></div>

            </div>
        </div>  

        <div class="container">
            
            <div class="col-sm-2"></div>

            <div class="col-sm-2">

                <form action="add_client.jsp">                       
                    <input class="buttonMatter btn btn-group-justified" type="image" src="IMAGE\Actions-list-add-user-icon.png" alt="Submit"/>
                </form>

                <p class="ManageUser">New</p>

            </div>

            <div class="col-sm-2">

                <form action="updateClient.jsp">                       
                    <input class="buttonMatter btn btn-group-justified" type="image" src="IMAGE\Actions-user-properties-icon.png" alt="Submit"/>
                </form>

                <p class="ManageUser">Modify</p>

            </div>


            <div class="col-sm-2">

                <form action="delete_client.jsp">                       
                    <input class="buttonMatter btn btn-group-justified" type="image" src="IMAGE\Actions-list-remove-user-icon.png" alt="Submit"/>
                </form>

                <p class="ManageUser">Remove</p>

            </div>

            <div class="col-sm-2">

                <form action="view_all_client.jsp">                       
                    <input class="buttonMatter btn btn-group-justified" type="image" src="IMAGE\Actions-edit-find-user-icon.png" alt="Submit"/>
                </form>

                <p class="ManageUser">View</p>

            </div>


        </div>



    </body>


</html>
