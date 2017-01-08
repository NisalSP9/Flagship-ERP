<%-- 
    Document   : add_client
    Created on : Jul 8, 2016, 9:26:04 AM
    Author     : aDMIN
--%>

<%@page import="java.sql.Connection"%>
<%@page import="com.flagship.erp.connection.factory.DatabaseResourceFactory"%>
<%@page import="com.flagship.erp.service.impl.ClientServiceImpl"%>
<%@page import="com.flagship.erp.service.ClientService"%>
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
                    <a href="client.jsp" class="navbar-brand">Client</a>
                </div>

                <!-- Menu Items -->
                <div>
                    <ul class="nav navbar-nav">

                        <li class="active"><a href="add_client.jsp">New</a></li>
                        <li><a href="updateClient.jsp">Modify</a></li>
                        <li><a href="delete_client.jsp">Remove</a></li>
                        <li><a href="view_all_client.jsp">View</a></li>

                    </ul>
                </div>

            </div>
        </nav>

        <div class="container-fluid">

            <div class="row">

                <div class="TitelRedSpec col-xs-12"><p class="LetterOnRed">New Clients</p></div>

            </div>
        </div>  



        <div class="container-fluid">

            <div class="row">

                <form action="ClientProjectContoller">

                    <div class="col-xs-12">
                        <p class="FormTopics">Client's Personal Details</p>

                        <%
                            DatabaseResourceFactory factory = new DatabaseResourceFactory();

                            Connection connection = factory.getFactoryConnection().getConnection();

                            ClientService service = new ClientServiceImpl();

                            int i = service.getID(connection);

                            connection.close();


                        %>

                        <input class="IDTB" type="number" name="id" value="<%= ++i%>" readonly/>
                        <input class="IDTB" type="text" name="date" id="date" readonly/><br/>
                        <input class="FormTextBox" type="text" placeholder="Name" name="name" required/>
                        <input class="FormTextBox" type="text" placeholder="NIC" name="nic" required/>
                        <input class="FormTextBox" type="text" placeholder="Address" name="address" required/>
                        <input class="FormTextBox" type=email placeholder="Email" name="email"/>
                        <input class="FormTextBox" type="number" placeholder="Phone" name="phone" required/>   
                        <div  class="line-separator"></div>

                    </div>                   

                    <div class="col-xs-12">
                        <p class="FormTopics">Client's Project Details</p>
                        <input class="FormTextBox" type="text" placeholder="Status" name="status"/>

                        <select class="FormTextBox" style="font-weight: bolder;color: black" name="salesman">
                            <option>Salesman</option>     
                            <option>Namal Gamage</option>
                        </select>

                        <select class="FormTextBox" style="font-weight: bolder;color: black" name="architect">
                            <option>Architect</option>     
                            <option>Sadun Gamage</option>
                        </select>


                        <select class="FormTextBox" style="font-weight: bolder;color: black" name="site_TO">
                            <option>Site TO</option>     
                            <option>Kasun Gamage</option>
                        </select>

                        <select class="FormTextBox" style="font-weight: bolder;color: black" name="subcontctor">
                            <option>Sub Contractor</option>     
                            <option>Yuthika Gamage</option>
                        </select>

                        <input class="FormTextBox" type="number" placeholder="Project Price" name="project_price"/>
                        <input class="FormTextBox" type="text" placeholder="Site Address" name="site_address" required/>
                        <input class="FormTextBox" type="text" placeholder="Notes" name="notes"/>
                        <input class="FormTextBox" type="text" placeholder="Remark" name="remark"/>

                        <input class="FormTextBox" type="text" placeholder="Structural" name="structural"/>
                        <input class="FormTextBox" type="text" placeholder="MEP" name="MEP"/>
                        <input class="FormTextBox" type="text" placeholder="Council Status" name="council_status"/>

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

        <script>

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
