<%-- 
    Document   : delete_employee
    Created on : Jul 11, 2016, 4:30:18 PM
    Author     : aDMIN
--%>

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
                        <li class="active"><a href="delete_employee.jsp">Delete</a></li>
                        <li><a href="view_all_employee.jsp">View</a></li>                       
                    </ul>
                </div>



            </div>
        </nav>

         <div class="container-fluid">

            <div class="row">

                <div class="TitelRedSpec col-xs-12"><p class="LetterOnRed">Delete Employee</p></div>

            </div>
        </div> 

        <div class="container-fluid">

            <div class="row">

                <form action="">

                    <div class="col-xs-12">
                        <p class="FormTopics">Employee's Personal Details</p>
                        <input class="FormTextBox" type="text" placeholder="Name" name="name"/>
                        <input class="FormTextBox" type="text" placeholder="NIC" name="nic"/>
                        <input class="FormTextBox" type="text" placeholder="Address" name="address"/>
                        <input class="FormTextBox" type=email placeholder="Email" name="email"/>
                        <input class="FormTextBox" type="number" placeholder="Land Line" name="phone"/>
                        <input class="FormTextBox" type="number" placeholder="Mobile" name="mobile"/>
                        <div  class="line-separator"></div>

                    </div>                   

                    <div class="col-xs-12">
                        <p class="FormTopics">Employee's Office Details</p>

                        <select class="FormTextBox" style="font-weight: bolder ;color: black" name="status">
                            <option>Working</option>
                            <option>Resign</option>
                            <option>Terminated</option>
                        </select>

                        <select class="FormTextBox" style="font-weight: bolder ;color: black" name="vehical">
                            <option>Using Company Vehicle</option>
                            <option>Not Using Company Vehicle</option>
                            <option>Using Personal Vehicle</option>
                        </select>

                        <select class="FormTextBox" style="font-weight: bolder ;color: black" name="incentive">
                            <option>Eligible For Incentive</option>
                            <option>Not eligible For Incentive</option>                           
                        </select>

                        <div class="col-xs-12">

                            <select class="FormTextBox" style="font-weight: bolder ;color: black" name="department">
                                <option>Department</option>
                                <option>IT</option>                           
                            </select>


                            <input type="button" value="+" onclick="popUp()"><br/>

                            <select class="FormTextBox" style="font-weight: bolder ;color: black" name="grade">
                                <option>Grade</option>
                                <option>1</option>                           
                            </select>

                            <input type="button" value="+" onclick="popUpGrade()"><br/>


                            <select class="FormTextBox" style="font-weight: bolder ;color: black" name="position">
                                <option>Position</option>
                                <option>1</option>                           
                            </select>

                            <input type="button" value="+" onclick="popUpPosition()"><br/>
                        </div><br/>


                        <input class="FormTextBox" type="text" placeholder="EPF Number" name="epfNo"/>
                        <input class="FormTextBox" type="number" placeholder="Basic Salary" name="bSalary"/>
                        <input class="FormTextBox" type="number" placeholder="Reimbursement Allowance" name="reim_all"/>
                        <input class="FormTextBox" type="number" placeholder="Budgetary Allowance" name="bud_all"/>
                        <input class="FormTextBox" type="number" placeholder="Vehicle Allowance" name="ve_all"/>
                        <input class="FormTextBox" type="number" placeholder="Travelling Allowance" name="tra_all"/>
                        <input class="FormTextBox" type="number" placeholder="EPF" name="epf"/>
                        <input class="FormTextBox" type="number" placeholder="Salary" name="salary"/>

                        <div  class="line-separator"></div>


                    </div>

                    <div class="col-xs-6">
                        <button class="btn btn-info btn-lg" type="submit" style="width: 100%;margin-top: 8px;margin-bottom: 8px;" value="Submit">Delete</button>

                    </div>
                    <div class="col-xs-6">
                        <button type="reset" class="btn btn-default btn-lg" style="width: 100%;margin-top: 8px;margin-bottom: 8px;" value="Reset">Reset</button>
                    </div>

                </form>



            </div>


        </div>

    <from>





    </from>

    <script>
        function popUp() {
            var person = prompt("Please enter new department");

            if (person !== null) {

            }
        }

        function popUpGrade() {
            var person = prompt("Please enter new grade");

            if (person !== null) {

            }
        }

        function popUpPosition() {


            var person = prompt("Please enter new position");

            if (person !== null) {

            }
        }
    </script>
</body>
</html>
