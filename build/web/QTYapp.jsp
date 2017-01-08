<%-- 
    Document   : QTYapp
    Created on : Jul 25, 2016, 2:40:26 PM
    Author     : NisalSP9
--%>

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
                    <a href="QTY_app_home.jsp" class="navbar-brand">QTY Approval</a>
                </div>

                <!-- Menu Items -->
                <div>
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="QTYapp.jsp">Pending Request</a></li>
                        <li><a href="modify_apped_qtys.jsp">Modify</a></li>
                        <li><a href="view_all_apped_qty.jsp">View</a></li>                       
                    </ul>
                </div>



            </div>
        </nav>

        <div class="container-fluid">

            <div class="row">

                <div class="TitelRedSpec col-xs-12"><p class="LetterOnRed">Pending QTY Approval Request</p></div>

            </div>
        </div>  



        <div class="container-fluid">

            <div class="row">
                <div class="col-xs-12">
                    <table class="table table-striped" style=" white-space: nowrap;" border="1">
                        <thead>
                            <tr>

                                <th>Site ID</th>
                                <th>Client</th>
                                <th>TO</th>
                                <th>Officer</th>
                                <th>Phase</th>
                                <th>Element</th>
                                <th>Item</th>
                                <th>Description</th>
                                <th>QTY</th>
                                <th>Unit</th>
                                <th>PO Date</th>

                            </tr>
                        </thead>
                        <tbody>

                            <%
                                String id = null;
                                String phase = null;
                                String element = null;
                                String item = null;

                                DatabaseResourceFactory factory = new DatabaseResourceFactory();

                                Connection connection = factory.getFactoryConnection().getConnection();

                                OPsServiceImpl serviceImpl = new OPsServiceImpl();

                                ResultSet resultSet = serviceImpl.pendingQTYApp(connection);

                                while (resultSet.next()) {

                                    id = resultSet.getString("site_id");
                                    phase = resultSet.getString("phase");
                                    element = resultSet.getString("element");
                                    item = resultSet.getString("item");


                            %>

                            <tr>        



                                <td><%=id%></td>
                                <td><%=resultSet.getString("client_name")%></td>
                                <td><%=resultSet.getString("TO_name")%></td>
                                <td><%=resultSet.getString("officer")%></td>
                                <td><%=phase%></td>
                                <td><%=element%></td>
                                <td><%=item%></td>
                                <td><%=resultSet.getString("description")%></td>
                                <td><%=resultSet.getString("qty")%></td>
                                <td><%=resultSet.getString("units")%></td>
                                <td><%=resultSet.getString("po_date")%></td>   

                                <td> <button onclick="goApp(<%=resultSet.getString("pos_id")%>)">Ok</button></td>
                                <td> <button onclick="rejectQTYApp(<%=resultSet.getString("pos_id")%>)">Reject</button></td>
                            </tr>    

                            <%}

                                connection.close();

                            %>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <div class="container">
            Previous Orders

            <div class="row">
                <div class="col-xs-12">
                    <table class="table table-striped" style=" white-space: nowrap;" border="1">

                        <thead>
                            <tr>

                                <th>Site ID</th>                              
                                <th>Officer</th>
                                <th>Phase</th>
                                <th>Element</th>
                                <th>Item</th>                         
                                <th>QTY</th>
                                <th>Unit</th>
                                <th>PO Date</th>

                            </tr>
                        </thead>
                        <tbody>

                            <% DatabaseResourceFactory factory1 = new DatabaseResourceFactory();

                                Connection connection1 = factory1.getFactoryConnection().getConnection();

                                OPsServiceImpl serviceImpl1 = new OPsServiceImpl();

                                ResultSet resultSet1 = serviceImpl1.priviouseOrders(connection1, id, phase, element, item);

                                while (resultSet1.next()) {

                            %>

                            <tr>        



                                <td><%=resultSet1.getString("site_id")%></td>


                                <td><%=resultSet1.getString("officer")%></td>
                                <td><%=resultSet1.getString("phase")%></td>
                                <td><%=resultSet1.getString("element")%></td>
                                <td><%=resultSet1.getString("item")%></td>

                                <td><%=resultSet1.getString("qty")%></td>
                                <td><%=resultSet1.getString("units")%></td>
                                <td><%=resultSet1.getString("po_date")%></td> 
                            </tr>    

                            <%}

                                connection1.close();

                            %>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>



        <script>

            var curDate;


            function dateFun() {

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


            function goApp(x) {

                if (confirm("Are you sure..!") === true) {

                    document.location.href = 'QTYApp?id=' + x + '&date=' + curDate;



                }

            }

            function rejectQTYApp(x) {

                var note = prompt("Please enter reason to reject");

                if (note) {

                    document.location.href = 'RejectQTYApp?id=' + x + '&note=' + note;

                }

            }

        </script>
    </body>
</html>

