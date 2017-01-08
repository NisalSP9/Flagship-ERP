<%-- 
    Document   : update_pos_loader
    Created on : Jul 25, 2016, 8:09:32 AM
    Author     : NisalSP9
--%>

<%@page import="com.flagship.erp.service.impl.ElementServiceImpl"%>
<%@page import="com.flagship.erp.service.impl.ItemServiceImpl"%>
<%@page import="com.flagship.erp.service.impl.PhaseServiceImpl"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.flagship.erp.service.impl.OfficerServiceImpl"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.flagship.erp.connection.factory.DatabaseResourceFactory"%>
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
    <body class="cfs">

        <div class="container-fluid">

            <div class="row">

                <div class="TitleIndex col-xs-12"><p class="Letter">Flagship ERP</p></div>

            </div>
        </div>  

        <div class="container-fluid">

            <div class="row">

                <div class="TitelRedSpec col-xs-12"><p class="LetterOnRed">Update Purchase Order</p></div>

            </div>
        </div>  

        <div class="container-fluid">        

            <form action="TO_POs_Controller" method="Put">

                <div class="row">

                    <div class = "col-xs-12">

                        <div  class="line-separator"></div>

                        <p class="FormTopics">Site Details</p><br/>

                        POS ID &nbsp;&nbsp;&nbsp;&nbsp;<input style="width: 200px" type="text" name="posID" value="<%= request.getParameter("posid") %>" readonly class="IDTB"/><br/>

                        POS Date  <input readonly class="IDTB" style="width: 200px" type="text" name="date" value="<%= request.getParameter("date") %>"/><br/>

                        Site ID &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="IDTB" type="text" name="siteId" placeholder="ID" value="<%=  request.getParameter("siteid")%>" readonly required/><br/>

                        Client Name <input class="FormTextBox" type="text" name="client" placeholder="Client" value="<%=  request.getParameter("cn")%>" required readonly/> <br/>

                        Site TO &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="FormTextBox " type="text" name="to" placeholder="Site TO" value="<%=  request.getParameter("to")%>" required readonly/>

                    </div>

                    <div class = "col-xs-12">

                        <div  class="line-separator"></div>

                        <p class="FormTopics">Purchase Details</p>

                        Officer&nbsp;&nbsp;&nbsp;&nbsp;<select class="FormTextBox " name="officer">
                            
                            <option><%= request.getParameter("officer") %></option>

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

                        </select><br/>


                        Phase&nbsp;&nbsp;&nbsp;&nbsp;  <select class="FormTextBox" name="phase">

                            <option><%= request.getParameter("phase") %></option>
                            <%  DatabaseResourceFactory factory = new DatabaseResourceFactory();

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
                        </select><br/>

                        Element &nbsp;<select class="FormTextBox" name="element">

                            <option><%= request.getParameter("ele") %></option>


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

                        </select><br/>

                        Item &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select class="FormTextBox" name="item">

                            <option><%= request.getParameter("item") %></option>

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

                        </select><br/>

                        Description <input class="FormTextBox "  type="text" name="dis" value="<%= request.getParameter("desc") %>"/><br/>

                        QTY&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <input class="FormTextBox " type="number" name="qty" value="<%= request.getParameter("qty") %>"/><br/>

                        Units&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <input class="FormTextBox " type="text" name="unit" value="<%= request.getParameter("unit") %>"/><br/>

                        <input hidden type="submit">
                    </div>
                </div>
                <div  class="line-separator"></div>


                <div class="col-xs-6">
                    <button class="btn btn-info btn-lg" type="submit" style="width: 100%;margin-top: 8px;margin-bottom: 8px;" value="Submit">Update</button>

                </div>
                <div class="col-xs-6">
                    <button type="reset" class="btn btn-default btn-lg" style="width: 100%;margin-top: 8px;margin-bottom: 8px;" value="Reset">Reset</button>
                </div>

            </form>

        </div>



    </body>
</html>


