<%-- 
    Document   : modify_apped_qtys
    Created on : Jul 25, 2016, 4:41:30 PM
    Author     : NisalSP9
--%>

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

    <body class="cfs">


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
                        <li><a href="QTYapp.jsp">Pending Request</a></li>
                        <li  class="active"><a href="modify_apped_qtys.jsp">Modify</a></li>
                        <li><a href="view_all_apped_qty.jsp">View</a></li>                       
                    </ul>
                </div>



            </div>
        </nav>

        <div class="container-fluid">

            <div class="row">

                <div class="TitelRedSpec col-xs-12"><p class="LetterOnRed">Modify</p></div>

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

                            <% DatabaseResourceFactory factory = new DatabaseResourceFactory();

                                Connection connection = factory.getFactoryConnection().getConnection();

                                OPsServiceImpl serviceImpl = new OPsServiceImpl();

                                ResultSet resultSet = serviceImpl.modiAppedQTY(connection);

                                while (resultSet.next()) {

                            %>

                            <tr>        

                               
                                <td><%=resultSet.getString("site_id")%></td>
                                <td><%=resultSet.getString("client_name")%></td>
                                <td><%=resultSet.getString("TO_name")%></td>
                                <td><%=resultSet.getString("officer")%></td>
                                <td><%=resultSet.getString("phase")%></td>
                                <td><%=resultSet.getString("element")%></td>
                                <td><%=resultSet.getString("item")%></td>
                                <td><%=resultSet.getString("description")%></td>
                                <td><%=resultSet.getString("qty")%></td>
                                <td><%=resultSet.getString("units")%></td>
                                <td><%=resultSet.getString("po_date")%></td>
                                <td><input class='Button' type='submit' value='X' onclick="goDelete(<%=resultSet.getString("pos_id")%>)"/></td>

                            </tr>    


                            <%}
                                connection.close();
                            %>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>



        <script>

            function goDelete(x) {

                if (confirm("Are you sure..!") === true) {

                    document.location.href = 'CancelAppQTY?id=' + x;

                }
            }

        </script>

    </body>
</html>


