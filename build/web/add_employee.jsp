<%-- 
    Document   : add_employee
    Created on : Jul 11, 2016, 2:59:53 PM
    Author     : NisalSP9
--%>

<%@page import="com.flagship.erp.service.impl.PositionServiceImpl"%>
<%@page import="com.flagship.erp.service.impl.GradeServiceImpl"%>
<%@page import="java.util.Map"%>
<%@page import="com.flagship.erp.service.impl.DepartmentServiceImpl"%>
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
                        <li  class="active"><a href="add_employee.jsp">New</a></li>
                        <li><a href="update_employee.jsp">Modify</a></li>
                        <li><a href="delete_employee.jsp">Delete</a></li>
                        <li><a href="view_all_employee.jsp">View</a></li>                       
                    </ul>
                </div>



            </div>
        </nav>

         <div class="container-fluid">

            <div class="row">

                <div class="TitelRedSpec col-xs-12"><p class="LetterOnRed">New Employee</p></div>

            </div>
        </div> 

        
     
        <div class="container-fluid">

            <div class="row">

                <form action="EmployeeContoller" method="post">

                    <div class="col-xs-12">
                        <p class="FormTopics">Employee's Personal Details</p>
                        <div  class="line-separator"></div>
                        <input class="FormTextBox" type="text" placeholder="Name" name="name" required/>
                        <input class="FormTextBox" type="text" placeholder="NIC" name="nic" required/>
                        <input class="FormTextBox" type="text" placeholder="Address" name="address" required/>
                        <input class="FormTextBox" type=email placeholder="Email" name="email"/>
                        <input class="FormTextBox" type="number" placeholder="Land Line" name="phone"/>
                        <input class="FormTextBox" type="number" placeholder="Mobile" name="mobile"/>
                        <div  class="line-separator"></div>

                    </div>                   

                    <div class="col-xs-12">
                        <p class="FormTopics">Employee's Office Details</p>

                        <select class="FormTextBox2"  name="status">
                            <option>Working</option>
                            <option>Resign</option>
                            <option>Terminated</option>
                        </select>

                        <select class="FormTextBox2" style="font-weight: bolder ;color: black" name="vehical">
                            <option>Using Company Vehicle</option>
                            <option>Not Using Company Vehicle</option>
                            <option>Using Personal Vehicle</option>
                        </select>

                        <select class="FormTextBox2" style="font-weight: bolder ;color: black" name="incentive">
                            <option>Eligible For Incentive</option>
                            <option>Not eligible For Incentive</option>                           
                        </select><br/>

                        <div class="row">

                            <div class="col-xs-12">

                                <select class="FormTextBox1" style="font-weight: bolder ;color: black" id="department" name="department">
                                    <option>Department</option>





                                    <%
                                        DepartmentServiceImpl serviceImpl = new DepartmentServiceImpl();
                                        Map<String, String> department = serviceImpl.getDepartment();
                                        for (Map.Entry<String, String> dep : department.entrySet()) {

                                    %>



                                    <option value="<%= dep.getValue()%> ">
                                        <%= dep.getValue()%>
                                    </option>


                                    <%}%>
                                </select>


                                <button><a href="add_new_department.jsp" style="font-weight: bolder ;color: black"  target="_blank" >+</a></button>

                                <select class="FormTextBox1" style="font-weight: bolder ;color: black" name="grade" required>
                                    <option>Grade</option>



                                    <%
                                        GradeServiceImpl gradeServiceImpl = new GradeServiceImpl();
                                        Map<String, String> grade = gradeServiceImpl.getGrade();
                                        for (Map.Entry<String, String> gra : grade.entrySet()) {

                                    %>

                                    <option value="<%= gra.getValue()%> ">
                                        <%= gra.getValue()%>
                                    </option>


                                    <%}%>








                                </select>

                                <button><a href="add_new_grade.jsp" style="font-weight: bolder ;color: black"  target="_blank" >+</a></button>

                                <select class="FormTextBox1" style="font-weight: bolder ;color: black" name="position" required>
                                    <option>Position</option>
                                    <%
                                        PositionServiceImpl positionServiceImpl = new PositionServiceImpl();
                                        Map<String, String> position = positionServiceImpl.getPosition();
                                        for (Map.Entry<String, String> pos : position.entrySet()) {

                                    %>



                                    <option value="<%= pos.getValue()%> ">
                                        <%= pos.getValue()%>
                                    </option>


                                    <%}%>                       
                                </select>

                                <button><a href="add_new_position.jsp" style="font-weight: bolder ;color: black"  target="_blank" >+</a></button>



                            </div>


                        </div>

                        <div  class="line-separator"></div>

                        <p class="FormTopics">Employee's Salary Details</p>

                        <input class="FormTextBox2" type="text" placeholder="EPF Number" name="epfNo" required/>

                        <input class="FormTextBox2" type="number" placeholder="Reimbursement Allowance" id="reim_all" name="reim_all" required/>
                        <input class="FormTextBox2" type="number" placeholder="Budgetary Allowance" id="bud_all" name="bud_all" required/>
                        <input class="FormTextBox2" type="number" placeholder="Vehicle Allowance" id="ve_all" name="ve_all" required/>
                        <input class="FormTextBox2" type="number" placeholder="Travelling Allowance" id="tra_all" name="tra_all" required/>
                        <input class="FormTextBox2" type="number" placeholder="Basic Salary" id="bSalary" name="bSalary" onkeyup="salaryFunction()"  required/>
                        <input class="FormTextBox2" type="number" placeholder="EPF" id="epf" name="epf" readonly/>
                        <input class="FormTextBox2" type="number" placeholder="ETF" id="etf" name="etf" readonly/>
                        <input class="FormTextBox2" type="number" placeholder="Salary" id="salary" name="salary" readonly/>

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

            var bSalary = 0;
            var epfValue = 0;
            var etf = 0;
            var rA = 0;
            var bA = 0;
            var vA = 0;
            var tA = 0;
            function salaryFunction() {

                rA = parseFloat(document.getElementById("reim_all").value);

                bA = parseFloat(document.getElementById("bud_all").value);

                vA = parseFloat(document.getElementById("ve_all").value);

                tA = parseFloat(document.getElementById("tra_all").value);

                bSalary = document.getElementById("bSalary").value;

                epfValue = (bSalary * 8) / 100;

                etf = (bSalary * 3) / 100;

                document.getElementById("epf").value = epfValue;

                document.getElementById("etf").value = etf;

                document.getElementById("salary").value = parseFloat((bSalary - epfValue) + bA + vA + rA + tA);

            }



        </script>


    </body>
</html>
