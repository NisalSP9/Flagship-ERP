<%-- 
    Document   : view_all_client
    Created on : Jul 8, 2016, 12:56:16 PM
    Author     : NisalSP9
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.flagship.erp.service.impl.ClientServiceImpl"%>
<%@page import="com.flagship.erp.service.ClientService"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.flagship.erp.connection.factory.DatabaseResourceFactory"%>
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
                    <a href="client.jsp" class="navbar-brand">Client</a>
                </div>

                <!-- Menu Items -->
                <div>
                    <ul class="nav navbar-nav">

                        <li><a href="add_client.jsp">New</a></li>
                        <li><a href="updateClient.jsp">Modify</a></li>
                        <li><a href="delete_client.jsp">Remove</a></li>
                        <li class="active"><a href="view_all_client.jsp">View</a></li>

                    </ul>
                </div>

            </div>
        </nav>

        <div class="container-fluid">

            <div class="row">

                <div class="TitelRedSpec col-xs-12"><p class="LetterOnRed">View All Clients</p></div>

            </div>
        </div>  



        <div class="container-fluid">

            <div class="row">
                <div class="col-xs-12">
                    <table class="table table-striped" style=" white-space: nowrap;" border="1">
                        <thead>
                            <tr>
                                <th>Project ID</th>
                                <th>Name</th>
                                <th>NIC</th>
                                <th>Address</th>                                
                                <th>Phone</th>
                                <th>Email</th>

                                <th>Status</th>
                                <th>Salesman</th>
                                <th>Project Price</th>
                                <th>Site Address</th>
                                <th>Notes</th>
                                <th>Remark</th>
                                <th>Architect</th>
                                <th>Structural</th>
                                <th>MEP</th>
                                <th>Start Date</th>
                                <th>Council Status</th>
                                <th>Site TO</th>
                                <th>Sub Contractor</th>

                            </tr>
                        </thead>
                        <tbody>

                            <%

                                DatabaseResourceFactory factory = new DatabaseResourceFactory();

                                Connection connection = factory.getFactoryConnection().getConnection();

                                ClientService service = new ClientServiceImpl();

                                ResultSet resultSet = service.viewAllClient(connection);

                                while (resultSet.next()) {

                            %>

                            <tr>
                                <td><%= resultSet.getString("project_id")%></td>
                                <td><%= resultSet.getString("client_name")%></td>
                                <td><%= resultSet.getString("nic")%></td>
                                <td><%= resultSet.getString("address")%></td>
                                <td><%= resultSet.getString("phone_number")%></td>
                                <td><%= resultSet.getString("email")%></td>
                                <td><%= resultSet.getString("status")%></td>
                                <td><%= resultSet.getString("salesman_name")%></td>
                                <td><%= resultSet.getString("project_price")%></td>
                                <td><%= resultSet.getString("site_address")%></td>
                                <td><%= resultSet.getString("note")%></td>
                                <td><%= resultSet.getString("remaks")%></td>
                                <td><%= resultSet.getString("architect_name")%></td>
                                <td><%= resultSet.getString("structural")%></td>
                                <td><%= resultSet.getString("MEP")%></td>
                                <td><%= resultSet.getString("start_date")%></td>
                                <td><%= resultSet.getString("council_status")%></td>
                                <td><%= resultSet.getString("siteTO_name")%></td>
                                <td><%= resultSet.getString("sub_contractor_name")%></td>

                            </tr>  

                            <%}

                                connection.close();

                            %>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>


    </body>
</html>
