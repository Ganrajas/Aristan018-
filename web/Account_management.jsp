<!DOCTYPE html>
<html>
<head>
  <title> www.aristan.com</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style type="text/css">
    body{
      background-image: url("back2.jpg");
      background-repeat: no-repeat;
      background-size: cover;
      font-family: bold;
      margin: 0px;
    }
    #brandname{
      background:linear-gradient(to right,deeppink,gold,limegreen,blue,purple);
      padding: 20px;
      color: white;
      box-shadow: 0px 5px 15px rgba(0,0,0,0.8);
    }
    #tagline{
      margin-top: -40px;
    }
    .main{
      background-color: rgba(0,0,0,0.3);
      margin-top: 20px;
      text-align: center;
      color: white;
      width: 100%;
      padding-top: 10px;
      padding-bottom: 20px;
        
    }
    .abc{
      width: 20%;
      border-radius: 3px;
      font-size: 18px;
      background-color:deeppink;
      color: white;
      display: inline-block;
      padding: 15px 3px;
    }
    .abc:hover{
      background-color: #000123;
      cursor: pointer;
    }
    a{
      text-decoration: none;
      color: white;
    }
    a:hover{
      color:white;
      text-decoration: none;
    }
    h1{
        padding-top: 10px;
        margin-top: -10px;
        text-shadow: 2px 2px black;
    }
    .row{
        margin-top: 40px;
        position: relative;
        left: 20px;
    }
    #logout{
        margin-left: 90%   
    }
    p{
        margin-top: -10px;
    }
    
   
    
  </style>
</head>
<body>
    <div id="brandname">
        <h1> Aristan CRM - Account Management Dashboard </h1>
        <a href="logoutprocess.jsp" id="logout"> 
            <button class="btn btn-primary" type="button"><span  class="glyphicon glyphicon-log-out"></span>Log out &nbsp;&nbsp;</button>                            
        </a>
        <p id="tagline"> Education Empowerment </p>
        <p>
        <% String names=(String)session.getAttribute("sessionuser"); 
            out.print("Welcome "+names);
        %>
    </p> 
        
    </div>

    <div class="main">    
      <div class="row">
         
          <div class="abc"><a href="EmployeePaymentEntry.html"> Employee Payment Entry</a></div>
          <div class="abc"><a href="VendorPayEntry.html"> Vendor Payment Entry</a></div>
          <div class="abc"><a href="PettyCashEntry.html"> Petty Cash Entry</div>
      </div>
      
      <div class="row">
         
          <div class="abc"><a href="DisplayEmpPayment.jsp"> Display Employee Payment </a></div>
          <div class="abc"><a href="DisplayVenPayEntry.jsp"> Display Vendor Payment </a></div>
          <div class="abc"><a href="DisplayPettyCashEntry.jsp"> Display Petty Cash </a></div>
      </div>

      
      
    </div>
    </body>
    </html>