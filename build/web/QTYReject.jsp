<%-- 
    Document   : QTYReject
    Created on : Aug 12, 2016, 2:57:18 PM
    Author     : flagship
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
                        <li><a href="update_pos.jsp">Modify</a></li>
                        <li><a href="delete_pos.jsp">Remove</a></li>
                        <li><a href="viewAllPos.jsp">View</a></li>
                        <li class="active"><a href="QTYReject.jsp">Rejected</a></li>
                        
                    </ul>
                </div>



            </div>
        </nav>

        <div class="container-fluid">

            <div class="row">

                <div class="TitelRedSpec col-xs-12"><p class="LetterOnRed">Rejected Purchase Order</p></div>

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
                                <th>Note</th>
                            </tr>
                        </thead>
                        <tbody>

                            <% DatabaseResourceFactory factory = new DatabaseResourceFactory();

                                Connection connection = factory.getFactoryConnection().getConnection();

                                OPsServiceImpl serviceImpl = new OPsServiceImpl();

                                ResultSet resultSet = serviceImpl.rejectedPOs(connection);

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
                        <td><%=resultSet.getString("qty_app_reject_note")%></td>
                        <td> <button onclick="goDelete(<%=resultSet.getString("pos_id")%>)">X</button></td>

                        </tr>    

                        <%}
                            connection.close();%>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <script>




            function goDelete(x) {

                if (confirm("Are you sure..!") === true) {
                    
                    document.location.href = 'DeletePOS?posID=' + x;
                    
                } 
                

            }




        </script>
    </body>
</html>
