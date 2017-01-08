<%-- 
    Document   : add_new_ops
    Created on : Jul 18, 2016, 10:53:11 AM
    Author     : NisalSP9
--%>

<%@page import="com.flagship.erp.service.impl.OfficerServiceImpl"%>
<%@page import="com.flagship.erp.service.impl.ElementServiceImpl"%>
<%@page import="com.flagship.erp.service.impl.PhaseServiceImpl"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.flagship.erp.connection.factory.DatabaseResourceFactory"%>
<%@page import="com.flagship.erp.service.impl.ItemServiceImpl"%>
<!DOCTYPE html >
<html>
    <head>

        <link rel="shortcut icon" type="image/png" href="IMAGE/favicon.ico"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <script src="JSs/jquery.min.js"></script>
        <script src="JSs/bootstrap.min.js"></script>

        <link rel="stylesheet" type="text/css" href="CSS/mainStyle.css">
        <link rel="stylesheet" type="text/css" href="CSS/bootstrap.min.css">


        <title>Flagship ERP</title>



    </head>
    <body onload="df()" class="cfs">

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
                        <li class="active"><a href="add_new_ops.jsp">New</a></li>
                        <li><a href="update_pos.jsp">Modify</a></li>
                        <li><a href="delete_pos.jsp">Remove</a></li>
                        <li><a href="viewAllPos.jsp">View</a></li>
                        <li><a href="QTYReject.jsp">Rejected</a></li>

                    </ul>
                </div>



            </div>
        </nav>

        <div class="container-fluid">

            <div class="row">

                <div class="TitelRedSpec col-xs-12"><p class="LetterOnRed">New Purchase Order</p></div>

            </div>
        </div>  

        <div class="container-fluid">        

            <form action="TO_POs_Controller" method="post">

                <div class="row">

                    <input type="number" id="siteID" name="siteID" style="margin-left: 25px;" placeholder="Enter Site ID" onkeyup="getDetails()" class="IDTB"/> 

                    <input readonly class="IDTB" type="text" id="date"/>

                    <div class = "col-xs-12">

                        <div  class="line-separator"></div>

                        <p class="FormTopics">Site Details</p>

                        Client Name <input class="FormTextBox" type="text" id="client" name="client" placeholder="Client" required readonly/> <br/>

                        Site TO &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="FormTextBox " type="text" id="TO_name" placeholder="Site TO" name="TO_name"  required readonly/>

                    </div>

                    <input type="submit" hidden="" />

                    <input type="text" name="date" id="date1" hidden />

                    <input hidden=""class="FormTextBox" type="text" id="site_id" placeholder="ID" name="site_id" value="<%=  request.getAttribute("id")%>" readonly=""/>

                    <input hidden="" class="FormTextBox" type="text" id="client" name="client" placeholder="Client" value="<%=  request.getAttribute("Client")%>"/> 

                    <input hidden="" class="FormTextBox " type="text" id="TO_name" placeholder="Site TO" name="TO_name" value="<%=  request.getAttribute("TO")%>"/>

                    <div class = "col-xs-12">

                        <div  class="line-separator"></div>

                        <p class="FormTopics">Purchase Details</p>

                        <select class="FormTextBox " name="officer">

                            <option>Officer</option>


                            <%
                                DatabaseResourceFactory factory0 = new DatabaseResourceFactory();

                                Connection connection0 = factory0.getFactoryConnection().getConnection();

                                OfficerServiceImpl serviceImpl0 = new OfficerServiceImpl();
                                ResultSet resultSet0 = serviceImpl0.getOfficer(connection0);
                                while (resultSet0.next()) {

                            %>

                            <option value="<%= resultSet0.getString("name")%> ">
                                <%= resultSet0.getString("name")%>
                            </option>

                            <%}

                                connection0.close();

                            %>

                        </select>

                        <select class="FormTextBox" name="phase">

                            <option>Phase</option>
                            <%                                DatabaseResourceFactory factory = new DatabaseResourceFactory();

                                Connection connection = factory.getFactoryConnection().getConnection();

                                PhaseServiceImpl serviceImpl = new PhaseServiceImpl();
                                ResultSet resultSet = serviceImpl.getPhase(connection);
                                while (resultSet.next()) {

                            %>

                            <option value="<%= resultSet.getString("phase")%> ">
                                <%= resultSet.getString("phase")%>
                            </option>

                            <%}

                                connection.close();

                            %>
                        </select>

                        <select class="FormTextBox" name="element">

                            <option>Element</option>


                            <%  DatabaseResourceFactory factory2 = new DatabaseResourceFactory();

                                Connection connection2 = factory2.getFactoryConnection().getConnection();

                                ElementServiceImpl serviceImpl2 = new ElementServiceImpl();

                                ResultSet resultSet2 = serviceImpl2.getElement(connection2);
                                while (resultSet2.next()) {

                            %>

                            <option value="<%= resultSet2.getString("element_name")%> ">
                                <%= resultSet2.getString("element_name")%>
                            </option>


                            <%}

                                connection2.close();

                            %>

                        </select>

                        <select class="FormTextBox" name="item">

                            <option>Item</option>

                            <%  DatabaseResourceFactory factory1 = new DatabaseResourceFactory();

                                Connection connection1 = factory1.getFactoryConnection().getConnection();

                                ItemServiceImpl serviceImpl1 = new ItemServiceImpl();
                                ResultSet resultSet1 = serviceImpl1.getItem(connection1);
                                while (resultSet1.next()) {

                            %>

                            <option value="<%= resultSet1.getString("item_name")%> ">
                                <%= resultSet1.getString("item_name")%>
                            </option>


                            <%}

                                connection1.close();

                            %>

                        </select>

                        <input class="FormTextBox "  type="text" name="dis" placeholder="Description" required/>

                        <input class="FormTextBox " type="number" name="qty" placeholder="QTY" required/>

                        <input class="FormTextBox " type="text" name="unit" placeholder="Units" required />


                        <input hidden type="submit">
                    </div>
                </div>
                <div  class="line-separator"></div>


                <div class="col-xs-6">
                    <input type="submit" class="btn btn-info btn-lg" type="submit" style="width: 100%;margin-top: 8px;margin-bottom: 8px;" value="Submit"/>

                </div>
                <div class="col-xs-6">
                    <input type="reset" class="btn btn-default btn-lg" style="width: 100%;margin-top: 8px;margin-bottom: 8px;" value="Reset"/>
                </div>

            </form>

        </div>
        <script>


            function getDetails() {

                var id = document.getElementById("siteID").value;

                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function ()
                {
                    if (xhttp.readyState === 4 && xhttp.status === 200)
                    {
                        var j = JSON.parse(xhttp.responseText);

                        console.log(j);

                        document.getElementById("client").value = j["client_name"];

                        document.getElementById("TO_name").value = j["site_TO"];


                    } else if (xhttp.status === 400) {
                        console.log(xhttp.responseText);
                    }
                };
                xhttp.open("GET", "SearchClientProject?id=" + id, true);
                xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                xhttp.send();
            }



            function df() {

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

                document.getElementById("date").value = today;
                document.getElementById("date1").value = today;

            }

        </script>
    </body>
</html>
