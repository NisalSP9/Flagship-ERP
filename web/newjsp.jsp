<%-- 
    Document   : newjsp
    Created on : Jul 13, 2016, 10:47:17 AM
    Author     : aDMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
<style>
.loader {
  border: 16px solid #1b273d;
  border-radius: 100%;
  border-top: 16px solid #D50000;
  width: 100px;
  height: 100px;
  -webkit-animation: spin 2s linear infinite;
  animation: spin 2s linear infinite;
}

@-webkit-keyframes spin {
  0% { -webkit-transform: rotate(0deg); }
  100% { -webkit-transform: rotate(360deg); }
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}
</style>
</head>
<body>

<h2>How To Create A Loader</h2>


<div class="loader" ></div>

</body>
</html>
