<!DOCTYPE html>
<html>
<head>
  <title> www.aristan.com</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

  <style type="text/css">
    body{
      background-image: url("back2.jpg");
      background-repeat: no-repeat;
      background-size: cover;
      margin: 0px;
    }
    #brandname{
      background: linear-gradient(to right,deeppink,gold,limegreen,blue,purple);
      padding:20px;
      color: white;
      box-shadow: 0px 5px 15px rgba(0,0,0,0.8);
    }
    #tagline{
      margin-top: -40px;
    }
    .main{
      background-color: rgba(0,0,0,0.3);
      margin-top: -20px;
      text-align: center;
      color: white;
      width: 100%;
      padding-bottom: 20px;     
    }
    h2{
      padding-top: 20px;
      text-shadow: 1px 2px black;
    }
    h1{
      padding-top: 10px;
      margin-top: -10px;
      text-shadow: 2px 3px black;
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
    .row{
        margin-top: 30px;
        position: relative;
        left: 20px;
    }
    .logout{
        margin-left: 90%;
        border: none;
        border-radius: 4px;
        padding: 5px 22px;
    }
    p{
        margin-top: -10px;
    }
    
  </style>
</head>
<body>
    <div id="brandname">
        <h1> Aristan CRM </h1>
        <a href="logoutprocess.jsp" class="logout"> 
         <button class="btn btn-primary" type="button"><i class="fa fa-sign-out"> LogOut</i></button>                                
        </a>
        <p id="tagline"> Education Empowerment </p>
        <p>
        <% String names=(String)session.getAttribute("sessionuser"); 
            out.print("Welcome "+names);
        %>
        </p>
    </div>

    <div class="main">
      <h2> Welcome to Employee Dashboard </h2>
      
      <div class="row">
          <div class="abc"><a href="Enquiry_management.jsp"> Enquiry Management</a></div>
          <div class="abc"><a href="Candidate_Registration_process.jsp">New Candidate Register </a> </div>
          <div class="abc"><a href="Registered_Candidate.jsp"> Registered Candidate</a></div>
          <div class="abc"><a href="DisplayBirthday.jsp">Today's Birth-Day</a></div>
           
      </div>
     
      
      <div class="row">
          <div class="abc"><a href="Ask_To_Approval_process.jsp"> Ask to Approval</a></div>
          <div class="abc"><a href="DisplayApproval.jsp"> Display Approval</a></div>
           <div class="abc"><a href="Certificate_Request_process.jsp"> Certificate Request</a></div>
          <div class="abc"><a href="Display_Certificate_Request.jsp"> Display Certificate Request</a></div>
         
       </div>
      
      <div class="row">
           <div class="abc"><a href="Placement_management.jsp"> Placement Management</a></div>
            <div class="abc"><a href="Account_management.jsp">Account  Management</a></div>
            <div class="abc"><a href="Exam_Management.html">Exam  Management</a></div>
            <div class="abc"><a href="Fees_management.html"> Fees Management</a></div>
      </div>
            
    </div>
    </body>
    </html>