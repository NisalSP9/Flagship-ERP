<%-- 
    Document   : updateClient
    Created on : Jul 8, 2016, 12:11:30 PM
    Author     : NisalSP9
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
                    <a href="client.jsp" class="navbar-brand">Client</a>
                </div>

                <!-- Menu Items -->
                <div>
                    <ul class="nav navbar-nav">

                        <li><a href="add_client.jsp">New</a></li>
                        <li  class="active"><a href="updateClient.jsp">Modify</a></li>
                        <li><a href="delete_client.jsp">Remove</a></li>
                        <li><a href="view_all_client.jsp">View</a></li>

                    </ul>
                </div>

            </div>
        </nav>

        <div class="container-fluid">

            <div class="row">

                <div class="TitelRedSpec col-xs-12"><p class="LetterOnRed">Update Clients</p></div>

            </div>
        </div>  



        <div class="container-fluid">

            <div class="row">

                <form>

                    <div class="col-sm-12">

                        Site ID <input class="IDTB" type="number" id="siteID" name="siteID" min="1" onkeyup="getDetails()"/><br/>
                        <div  class="line-separator"></div>
                        <p class="FormTopics">Personal Details</p>

                        Name &nbsp;&nbsp; <input class="FormTextBox "  type="text" placeholder="Name" id="name" name="name"/><br/>

                        NIC No &nbsp;<input class="FormTextBox "  type="text" placeholder="NIC" id="nic" name="nic"/><br/>

                        Address <input class="FormTextBox "  type="text" placeholder="Address" id="address" name="address"/><br/>

                        Email &nbsp;&nbsp;&nbsp;&nbsp;<input class="FormTextBox "  type="text" placeholder="Email" id="email" name="email"/><br/>

                        Phone &nbsp;&nbsp;&nbsp;<input class="FormTextBox "  type="number" placeholder="Phone" id="phone" name="phone"/><br/>
                        <div  class="line-separator"></div>

                    </div>                   

                    <div class="col-xs-12">
                        <p class="FormTopics">Project Details</p>

                        Start Date &nbsp;&nbsp;&nbsp;<input class="IDTB" type="text" id="date" placeholder="Date" name="date"/><br/>
                        Status &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="FormTextBox"  type="text" placeholder="Status" id="status" name="status"/><br/>
                        Salesman &nbsp;&nbsp;&nbsp;<input class="FormTextBox"  type="text" placeholder="Salesman" id="salesman" name="salesman"/><br/>
                        Project Price<input class="FormTextBox"  type="number" placeholder="Project Price" id="project_price" name="project_price"/><br/>
                        Site Address<input class="FormTextBox"  type="text" placeholder="Site Address" id="site_address" name="site_address"/><br/>
                        Notes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="FormTextBox"  type="text" placeholder="Notes" id="notes" name="notes"/><br/>
                        Remark&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="FormTextBox"  type="text" placeholder="Remark" id="remark" name="remark"/><br/>
                        Architect&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="FormTextBox"  type="text" placeholder="Architect" id="architect" name="architect"/><br/>
                        Structural&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="FormTextBox"  type="text" placeholder="Structural" id="structural" name="structural"/><br/>
                        MEP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="FormTextBox"  type="text" placeholder="MEP" id="MEP" name="MEP"/><br/>
                        Council Status<input class="FormTextBox"  type="text" placeholder="Council Status" id="council_status" name="council_status"/><br/>
                        Site TO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="FormTextBox"  type="text" placeholder="Site TO" id="site_TO" name="site_TO"/><br/>
                        Sub Contractor<input class="FormTextBox"  type="text" placeholder="Sub Contractor" id="subcontctor" name="subcontctor"/><br/>
                        <div  class="line-separator"></div>

                    </div>

                    <div class="col-xs-6">
                        <button class="btn btn-info btn-lg" style="width: 100%;margin-top: 8px;margin-bottom: 8px;" onclick="updateClient()">Update</button>

                    </div>
                    <div class="col-xs-6">
                        <button type="reset" class="btn btn-default btn-lg" style="width: 100%;margin-top: 8px;margin-bottom: 8px;" value="Reset">Reset</button>
                    </div>

                </form>

            </div>

        </div>


        <script>

            var c_id;
            function getDetails() {

                var id = document.getElementById("siteID").value;
                
                var xhttp = new XMLHttpRequest();
                
                xhttp.onreadystatechange = function ()
                
                {
                    if (xhttp.readyState === 4 && xhttp.status === 200)
                    
                    {
                        var j = JSON.parse(xhttp.responseText);
                        console.log(j);
                        c_id = j["clientID"];
                        document.getElementById("name").value = j["client_name"];
                        document.getElementById("nic").value = j["nic"];
                        document.getElementById("address").value = j["address"];
                        document.getElementById("phone").value = j["phone_number"];
                        document.getElementById("email").value = j["email"];
                        document.getElementById("date").value = j["date"];
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


            function updateClient() {

                var sid = document.getElementById("siteID").value;
                
                if (sid && c_id) {
                    
                    if (confirm("Are you sure..!") === true) {

                        var name = document.getElementById("name").value;
                        var nic = document.getElementById("nic").value;
                        var address = document.getElementById("address").value;
                        var phone = document.getElementById("phone").value;
                        var email = document.getElementById("email").value;
                        var date = document.getElementById("date").value;
                        var sta = document.getElementById("status").value;
                        var sm = document.getElementById("salesman").value;
                        var pp = document.getElementById("project_price").value;
                        var sa = document.getElementById("site_address").value;
                        var note = document.getElementById("notes").value;
                        var re = document.getElementById("remark").value;
                        var ar = document.getElementById("architect").value;
                        var stru = document.getElementById("structural").value;
                        var MEP = document.getElementById("MEP").value;
                        var cs = document.getElementById("council_status").value;
                        var st = document.getElementById("site_TO").value;
                        var sub = document.getElementById("subcontctor").value;
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
                        xhttp.open("Put", "SearchClientProject?cid=" + c_id + "&name=" + name + "&nic=" + nic + "&add=" + address + "&em=" + email + "&ph=" + phone + "&sid=" + sid + "&sta=" + sta + "&sm=" + sm + "&pp=" + pp + "&sa=" + sa + "&note=" + note + "&re=" + re + "&ar=" + ar + "&stru=" + stru + "&MEP=" + MEP + "&cs=" + cs + "&st=" + st + "&sub=" + sub + "&date=" + date, true);
                        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                        xhttp.send();

                    }
                } else {

                    alert("Places select a project to update");

                }

            }

        </script>



    </body>
</html>

