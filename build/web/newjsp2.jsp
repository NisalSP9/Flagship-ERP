<%-- 
    Document   : newjsp2
    Created on : Aug 23, 2016, 4:57:28 PM
    Author     : flagship
--%>

<%@page import="java.sql.ResultSet"%>
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
                <a href="view_ready_print.jsp" class="navbar-brand">Print</a>
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



    <div class="row">
        <div class="col-xs-12">
            <table class="table table-striped" style=" white-space: nowrap;" border="1">
                <thead>
                    <tr>
                        <th>POs ID</th>
                        <th>Site ID</th>
                        <th>Supplier ID</th>                         
                        <th>Phase</th>                        
                        <th>Item</th>                         
                        <th>QTY</th>
                        <th>Unit</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>

                    <%

                        ResultSet resultSet = (ResultSet) request.getAttribute("rs");

                        String name = null;
                        String officer = null;

                        while (resultSet.next()) {

                            name = resultSet.getString("supplier_name");
                            officer = resultSet.getString("officer");

                    %>

                    <tr>        

                        <td nowrap><%=resultSet.getString("pos_id")%></td>  
                        <td nowrap><%=resultSet.getString("site_id")%></td>  
                        <td nowrap><%=resultSet.getString("supplier_id")%></td>                        
                        <td nowrap><%=resultSet.getString("phase")%></td>                        
                        <td nowrap><%=resultSet.getString("item")%></td>                      
                        <td nowrap><%=resultSet.getString("qty")%></td>
                        <td nowrap><%=resultSet.getString("units")%></td>
                        <td nowrap><%=resultSet.getString("total")%></td>


                    </tr>    


                    <%}


                    %>

                <p>Supplier : <%=name%></p> <p>Officer : <%=officer%></p>

                </tbody>
            </table>


        </div>
    </div>
</div>
</body>
</html>
