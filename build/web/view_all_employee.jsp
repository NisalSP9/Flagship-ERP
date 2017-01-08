<%-- 
    Document   : view_all_employee
    Created on : Jul 11, 2016, 4:33:54 PM
    Author     : NisalSP9
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.flagship.erp.service.impl.EmployeeServiceImpl"%>
<%@page import="com.flagship.erp.service.EmployeeService"%>
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
                    <a href="employee.jsp" class="navbar-brand">Employee</a>
                </div>

                <!-- Menu Items -->
                <div>
                    <ul class="nav navbar-nav">
                        <li><a href="add_employee.jsp">New</a></li>
                        <li><a href="update_employee.jsp">Modify</a></li>
                        <li><a href="delete_employee.jsp">Delete</a></li>
                        <li class="active"><a href="view_all_employee.jsp">View</a></li>                       
                    </ul>
                </div>



            </div>
        </nav>

        <div class="container-fluid">

            <div class="row">

                <div class="TitelRedSpec col-xs-12"><p class="LetterOnRed">View All Employee</p></div>

            </div>
        </div>  


        <div class="container-fluid">

            <div class="row">
                <div class="col-xs-12">
                    <table class="table table-striped" style=" white-space: nowrap;" border="1">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>NIC</th>
                                <th>Address</th>                                
                                <th>Land Line</th>
                                <th>Mobile</th>
                                <th>Email</th>  

                                <th>Status</th>                                
                                <th>Vehicle</th>
                                <th>Incentive</th>
                                <th>Department</th>
                                <th>Grade</th>
                                <th>Position</th>

                                <th>EPF Number</th>
                                <th>Basic Salary</th>
                                <th>Reimbursement Allowance</th>
                                <th>Budgetary Allowance</th>
                                <th>Vehicle Allowance</th>
                                <th>Travelling Allowance</th>
                                <th>EPF</th>
                                <th>ETF</th>
                                <th>Salary</th>
                            </tr>
                        </thead>
                        <tbody>

                            <%

                                DatabaseResourceFactory factory = new DatabaseResourceFactory();

                                Connection connection = factory.getFactoryConnection().getConnection();

                                EmployeeService service = new EmployeeServiceImpl();

                                ResultSet resultSet = service.ViewAllEmployee(connection);

                                while (resultSet.next()) {

                            %>


                            <tr>

                                <td><%=resultSet.getString("name")%></td>
                                <td><%=resultSet.getString("nic")%></td>                                
                                <td><%=resultSet.getString("address")%></td>
                                <td><%=resultSet.getString("landline")%></td>
                                <td><%=resultSet.getString("mobile")%></td>
                                <td><%=resultSet.getString("email_personal")%></td>    

                                <td><%=resultSet.getString("status")%></td>
                                <td><%=resultSet.getString("vehicle")%></td>
                                <td><%=resultSet.getString("incentive")%></td>
                                <td><%=resultSet.getString("department")%></td>
                                <td><%=resultSet.getString("grade")%></td>
                                <td><%=resultSet.getString("position")%></td>

                                <td><%=resultSet.getString("epf_number")%></td>
                                <td><%=resultSet.getString("basic_salary")%></td>
                                <td><%=resultSet.getString("re_allo")%></td>
                                <td><%=resultSet.getString("bu_allo")%></td>
                                <td><%=resultSet.getString("ve_allo")%></td>
                                <td><%=resultSet.getString("tra_allo")%></td>
                                <td><%=resultSet.getString("epf")%></td>
                                <td><%=resultSet.getString("etf")%></td>
                                <td><%=resultSet.getString("salary")%></td>
                          
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
