<%-- 
    Document   : update_pos
    Created on : Jul 22, 2016, 3:29:51 PM
    Author     : NisaSP9
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
                    <a href="po.jsp" class="navbar-brand">New Purchase Order</a>
                </div>

                <!-- Menu Items -->
                <div>
                    <ul class="nav navbar-nav">
                        <li><a href="add_new_ops.jsp">New</a></li>
                        <li class="active"><a href="update_pos.jsp">Modify</a></li>
                        <li><a href="delete_pos.jsp">Remove</a></li>
                        <li><a href="viewAllPos.jsp">View</a></li>
                        <li><a href="QTYReject.jsp">Rejected</a></li>

                    </ul>
                </div>



            </div>
        </nav>

        <div class="container-fluid">

            <div class="row">

                <div class="TitelRedSpec col-xs-12"><p class="LetterOnRed">Update Purchase Order</p></div>

            </div>
        </div>  
        <div class="container-fluid">

            <div class="row">
                <div class="col-xs-12">
                    <table class="table table-striped" style=" white-space: nowrap;" border="1">
                        <thead>
                            <tr>
                                <th>Pos ID</th>
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

                                ResultSet resultSet = serviceImpl.viewAllPOs(connection);

                                while (resultSet.next()) {

                            %>

                            <tr>        
                                <%out.print("<form action='update_pos_loader.jsp'>");%>
                                <td><input type="number" class="updateTableStyle" name="posid" value="<%=resultSet.getString("pos_id")%>" readonly/></td>
                                <td><input type="number" class="updateTableStyle" name="siteid" value="<%=resultSet.getString("site_id")%>" readonly/></td>
                                <td><input type="text" class="updateTableStylelong" name="cn" value="<%=resultSet.getString("client_name")%>" readonly/></td>
                                <td><input type="text" class="updateTableStylelong" name="to" value="<%=resultSet.getString("TO_name")%>" readonly/></td>

                                <td><input type="text" class="updateTableStyle" name="officer" value="<%=resultSet.getString("officer")%>" readonly/></td>
                                <td><input type="text" class="updateTableStylelong" name="phase" value="<%=resultSet.getString("phase")%>" readonly/></td>
                                <td><input type="text" class="updateTableStylelong" name="ele" value="<%=resultSet.getString("element")%>" readonly/></td>
                                <td><input type="text" class="updateTableStylelong" name="item" value="<%=resultSet.getString("item")%>" readonly/></td>

                                <td><input type="text" class="updateTableStylelong" name="desc" value="<%=resultSet.getString("description")%>" readonly/></td>
                                <td><input type="text" class="updateTableStylelong" name="qty" value="<%=resultSet.getString("qty")%>" readonly/></td>
                                <td><input type="text" class="updateTableStylelong" name="unit" value="<%=resultSet.getString("units")%>" readonly/></td>

                                <td><input type="text" class="updateTableStylelong" name="date" value="<%=resultSet.getString("po_date")%>" readonly/></td>
                                <td> <input class='Button' type='submit' value='Edit'/></td>
                                    <% out.print("</form>");%>
                            </tr>    


                            <%}
                                connection.close();%>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>


    </body>
</html>
