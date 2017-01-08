<%-- 
    Document   : add_supplier
    Created on : Jul 28, 2016, 9:12:31 AM
    Author     : NisalSP9
--%>

<%@page import="com.flagship.erp.service.impl.PositionServiceImpl"%>
<%@page import="com.flagship.erp.service.impl.GradeServiceImpl"%>
<%@page import="java.util.Map"%>
<%@page import="com.flagship.erp.service.impl.DepartmentServiceImpl"%>
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

        <div class="container-fluid">

            <div class="row">

                <div class="TitelRedSpec col-xs-12"><p class="LetterOnRed">Add New Supplier</p></div>

            </div>
        </div>  

        <div class="container-fluid">

            <div class="row">

                <form action="SupplierController">

                    <div class="col-xs-12">
                        <p class="FormTopics">Supplier's Personal Details</p>
                        <div  class="line-separator"></div>
                        <input class="FormTextBox" type="text" placeholder="Name" name="name" required/>
                        <input class="FormTextBox" type="text" placeholder="NIC" name="nic" required/>
                        <input class="FormTextBox" type="text" placeholder="Address" name="address" required/>
                        <input class="FormTextBox" type=email placeholder="Email" name="email"/>
                        <input class="FormTextBox" type="number" placeholder="Land Line/Mobile" name="phone"/>
                        <div  class="line-separator"></div>

                    </div>                   

                    <div class="col-xs-12">
                        <p class="FormTopics">Supplier's Company Details</p>

                        <div class="row">

                            <div class="col-xs-12">

                                <input class="FormTextBox" type="text" placeholder="Company" id="reim_all" name="company"/>
                                <input class="FormTextBox" type="text" placeholder="PV No" id="bud_all" name="pv"/>

                            </div>

                        </div>

                        <div  class="line-separator"></div>

                        <p class="FormTopics">Supplier's Account Details</p>



                        <input class="FormTextBox" type="text" placeholder="Bank" id="reim_all" name="bank" required/>
                        <input class="FormTextBox" type="text" placeholder="Account No" id="bud_all" name="AccNo" required/>

                        <div  class="line-separator"></div>

                    </div>

                    <div class="col-xs-6">
                        <button class="btn btn-info btn-lg" type="submit" style="width: 100%;margin-top: 8px;margin-bottom: 8px;" value="Submit">Save</button>

                    </div>
                    <div class="col-xs-6">
                        <button type="reset" class="btn btn-default btn-lg" style="width: 100%;margin-top: 8px;margin-bottom: 8px;" value="Reset">Reset</button>
                    </div>

                </form>

            </div>

        </div>

    </body>
</html>

