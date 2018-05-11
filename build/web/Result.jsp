<%-- 
    Document   : result
    Created on : May 9, 2018, 1:47:23 PM
    Author     : Gaurav Nagar
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Tangerine">
        <title>JSP Page</title>
        
    </head>
<style>
.w3-tangerine {
    font-family: "Tangerine", serif;
}
</style>  
<body class="w3-amber">
    <div class="w3-panel w3-red ">
    <h1 class="w3-center  w3-xxxlarge">(-: Your Current Mail Status :-)</h1>
    </div> 
        
    <div class=" w3-container w3-center w3-small">
        <img src="EMail.jpg"  class="w3-circle w3-margin-top" alt="EMail.jpg"  style="width:45%">
    </div>
    <div class="w3-container w3-tangerine">
        <h1 class="w3-center  w3-text-teal w3-margin-top w3-xxlarge"><%=request.getAttribute("msg")%></h1>
    </div>     
    </body>
</html>
