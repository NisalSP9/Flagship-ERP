<%-- 
    Document   : delete_client
    Created on : Jul 8, 2016, 12:33:34 PM
    Author     : aDMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                        <li class="active"><a href="delete_client.jsp">Remove</a></li>
                        <li><a href="view_all_client.jsp">View</a></li>

                    </ul>
                </div>

            </div>
        </nav>

        <div class="container-fluid">

            <div class="row">

                <div class="TitelRedSpec col-xs-12"><p class="LetterOnRed">Remove Clients</p></div>

            </div>
        </div>  

        <div class="container-fluid">

            <div class="row">

                <form>

                    <div class="col-sm-12">

                        Site ID <input class="IDTB" type="number" id="siteID" name="siteID" min="1" onkeyup="getDetails()"/><br/>
                        <div  class="line-separator"></div>
                        <p class="FormTopics">Personal Details</p>



                        Name &nbsp;&nbsp; <input class="FormTextBox " readonly type="text" placeholder="Name" id="name" name="name"/><br/>

                        NIC No &nbsp;<input class="FormTextBox " readonly type="text" placeholder="NIC" id="nic" name="nic"/><br/>

                        Address <input class="FormTextBox " readonly type="text" placeholder="Address" id="address" name="address"/><br/>

                        Email &nbsp;&nbsp;&nbsp;&nbsp;<input class="FormTextBox " readonly type="text" placeholder="Email" id="email" name="email"/><br/>

                        Phone &nbsp;&nbsp;&nbsp;<input class="FormTextBox " readonly type="number" placeholder="Phone" id="phone" name="phone"/><br/>
                        <div  class="line-separator"></div>

                    </div>                   

                    <div class="col-xs-12">
                        <p class="FormTopics">Project Details</p>

                        Status &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="FormTextBox" readonly type="text" placeholder="Status" id="status" name="status"/><br/>
                        Salesman &nbsp;&nbsp;&nbsp;<input class="FormTextBox" readonly type="text" placeholder="Salesman" id="salesman" name="salesman"/><br/>
                        Project Price<input class="FormTextBox" readonly type="number" placeholder="Project Price" id="project_price" name="project_price"/><br/>
                        Site Address<input class="FormTextBox" readonly type="text" placeholder="Site Address" id="site_address" name="site_address"/><br/>
                        Notes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="FormTextBox" readonly type="text" placeholder="Notes" id="notes" name="notes"/><br/>
                        Remark&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="FormTextBox" readonly type="text" placeholder="Remark" id="remark" name="remark"/><br/>
                        Architect&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="FormTextBox" readonly type="text" placeholder="Architect" id="architect" name="architect"/><br/>
                        Structural&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="FormTextBox" readonly type="text" placeholder="Structural" id="structural" name="structural"/><br/>
                        MEP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="FormTextBox" readonly type="text" placeholder="MEP" id="MEP" name="MEP"/><br/>
                        Council Status<input class="FormTextBox" readonly type="text" placeholder="Council Status" id="council_status" name="council_status"/><br/>
                        Site TO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="FormTextBox" readonly type="text" placeholder="Site TO" id="site_TO" name="site_TO"/><br/>
                        Sub Contractor<input class="FormTextBox" readonly type="text" placeholder="Sub Contractor" id="subcontctor" name="subcontctor"/><br/>
                        <div  class="line-separator"></div>

                    </div>

                    <div class="col-xs-6">
                        <button class="btn btn-info btn-lg" type="submit" style="width: 100%;margin-top: 8px;margin-bottom: 8px;" onclick="deleteProject()">Delete</button>

                    </div>
                    <div class="col-xs-6">
                        <button type="reset" class="btn btn-default btn-lg" style="width: 100%;margin-top: 8px;margin-bottom: 8px;" value="Reset">Reset</button>
                    </div>

                </form>

            </div>

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
                        document.getElementById("name").value = j["client_name"];
                        document.getElementById("nic").value = j["nic"];
                        document.getElementById("address").value = j["address"];
                        document.getElementById("phone").value = j["phone_number"];
                        document.getElementById("email").value = j["email"];

                        document.getElementById("status").value = j["status"];
                        document.getElementById("salesman").value = j["salesman"];
                        document.getElementById("project_price").value = j["project_price"];
                        document.getElementById("site_address").value = j["site_address"];
                        document.getElementById("notes").value = j["note"];
                        document.getElementById("remark").value = j["remark"];

                        document.getElementById("architect").value = j["architect"];
                        document.getElementById("structural").value = j["structural"];
                        document.getElementById("MEP").value = j["MEP"];
                        document.getElementById("council_status").value = j["council_status"];
                        document.getElementById("site_TO").value = j["site_TO"];
                        document.getElementById("subcontctor").value = j["subcontctor"];


                    } else if (xhttp.status === 400) {
                        console.log(xhttp.responseText);
                    }
                };
                xhttp.open("GET", "SearchClientProject?id=" + id, true);
                xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                xhttp.send();
            }


            function deleteProject() {


                if (confirm("Are you sure..!") === true) {

                    var id = document.getElementById("siteID").value;
                    
                    
                    var xhttp = new XMLHttpRequest();
                    xhttp.onreadystatechange = function ()
                    {
                        if (xhttp.readyState === 4 && xhttp.status === 200)
                        {
                            console.log(xhttp.responseText);
                        } else if (xhttp.status === 400) {
                            console.log(xhttp.responseText);
                        }
                    };
                    xhttp.open("Delete", "SearchClientProject?id=" + id, true);
                    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                    xhttp.send();

                }


            }






        </script>


    </body>
</html>
