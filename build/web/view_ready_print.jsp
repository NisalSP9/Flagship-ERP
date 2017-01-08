<%-- 
    Document   : view_ready_print
    Created on : Jul 27, 2016, 3:58:35 PM
    Author     : NisalSP9
--%>

<%@page import="com.flagship.erp.service.impl.OfficerServiceImpl"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.flagship.erp.service.POsService"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.flagship.erp.connection.factory.DatabaseResourceFactory"%>
<%@page import="com.flagship.erp.service.impl.OPsServiceImpl"%>
<%@page import ="java.sql.ResultSet"%>
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

    <body onload="dateFun()" class="cfs">


        <div class="container-fluid">

            <div class="row">

                <div class="TitleIndex col-xs-12"><p class="Letter">Flagship ERP</p></div>

            </div>
        </div>    



        <nav class="navbar navbar-default" style="margin-bottom: 0px;">
            <div class="container-fluid">

                <!--Logo -->
                <div class="navbar-header">
                    <a href="print_po_home.jsp" class="navbar-brand">Print</a>
                </div>

                <!-- Menu Items -->
                <!--  <div>
                      <ul class="nav navbar-nav">
                          <li class="active"><a href="purchaseApp.jsp">Pending Request</a></li>
                          <li  id="a"><a href="modified_purchase_app.jsp">Modify</a></li>
                          <li><a href="view_all_app_purchase.jsp">View</a></li>                       
                      </ul>
                  </div>-->



            </div>
        </nav>

        <div class="container-fluid">

            <div class="row">

                <div class="TitelRedSpec col-xs-12"><p class="LetterOnRed">Pending Print Request</p></div>

            </div>
        </div>  

        <div class="container-fluid">

            <select id="xd" class="IDTB" style="width: 200px;">

                <option selected>

                    Select Supplier

                </option>

                <% DatabaseResourceFactory factory0 = new DatabaseResourceFactory();

                    Connection connection0 = factory0.getFactoryConnection().getConnection();

                    POsService service0 = new OPsServiceImpl();

                    ResultSet resultSet0 = service0.getSuppliersInPOS(connection0);

                    while (resultSet0.next()) {

                %>

                <option value="<%=resultSet0.getString("supplier_id")%>">

                    <%=resultSet0.getString("supplier_id") + "-" + resultSet0.getString("supplier_name")%>

                </option>

                <%
                    }

                    connection0.close();

                %>

            </select> 


            <select class="IDTB " name="officer"  id="off" onchange="updateClient()">

                <option>Officer</option>


                <%                                DatabaseResourceFactory factory1 = new DatabaseResourceFactory();

                    Connection connection1 = factory1.getFactoryConnection().getConnection();

                    OfficerServiceImpl serviceImpl1 = new OfficerServiceImpl();
                    ResultSet resultSet1 = serviceImpl1.getOfficer(connection1);
                    while (resultSet1.next()) {

                %>

                <option value="<%= resultSet1.getString("name")%> ">
                    <%= resultSet1.getString("name")%>
                </option>

                <%}

                    connection1.close();

                %>

            </select>


        </div>

        <script>

            var curDate;

            function dateFun() {

                //document.getElementById("a").style.visibility = "hidden";

                var today = new Date();
                var dd = today.getDate();
                var mm = today.getMonth() + 1; //January is 0!
                var yyyy = today.getFullYear();

                if (dd < 10) {
                    dd = '0' + dd;
                }

                if (mm < 10) {
                    mm = '0' + mm;
                }

                today = yyyy + '-' + mm + '-' + dd;

                curDate = today;

            }

            function updateClient() {

                var x = document.getElementById("xd").value;
                var y = document.getElementById("off").value;

                document.location = "reportLoader.jsp?name=" + x + "&off=" + y;



            }


        </script>
    </body>
</html>


