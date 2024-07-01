<!DOCTYPE html>
<html>
<head>
  <title> www.aristan.com</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style type="text/css">
    body{
      background-image: url("back2.jpg");
      background-repeat: no-repeat;
      background-size: cover;
      margin: 0px;
    }
    #brandname{
      background:linear-gradient(to right,deeppink,gold,limegreen,blue,purple);
      padding:15px;
      color: white;
      box-shadow: 0px 5px 15px rgba(0,0,0,0.8);
    }
    #tagline{
      margin-top: -40px;
    }
    form{
      margin-left: 15%;
      background-color: #91F5F5;
      width: 70%;
      
      margin-top: 40px; 
    }
    .inputclass{
      width: 100%;
      border-radius: 2px;
      padding:5px;
      border: none;
      text-transform: capitalize;

    }
    .btnclass{    
      border-radius: 10px;
      padding:7px 30px;
      border: none;
      background-color: #000123;
      color: white;
     
    }
    .btnclass:hover{
        background-color: orangered;
        cursor: pointer;
    }
    h2{
      text-shadow: 1px 1px white;
    }
    h1{
      padding-top: 10px;
      margin-top: -10px;
      text-shadow: 2px 3px black;
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
  <script>
      function showDate()
      {
           var d=new Date();
          
           var month_list=["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"];
           
           var dd=d.getDate();
           var mm=month_list[d.getMonth()];
           var yy=d.getFullYear();
           
           
          document.f1.certificate_request_date.value=dd+" - "+mm+" - "+yy;
          document.f1.certificate_request_time.value=d.toLocaleTimeString();
      }
  </script>
</head>
<body onload="showDate()">  
    <div id="brandname">
    <h1> Aristan CRM - Certificate Request </h1>
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

  <form name="f1" method="post" action="Certificate_Request.jsp" autocomplete="off">
   <table cellpadding="7" align="center" width="80%">
    <tr>
      <th colspan="4">
        <h2> Certificate Request</h2>
      </th>
    </tr>

    <tr>
      <td> Certificate Request Time</td>
      <td> <input type="text" name="certificate_request_time" class=" inputclass" readonly></td>
    
      <td> Certificate Request Date</td>
      <td> <input type="text" name="certificate_request_date" class=" inputclass" readonly></td>
    </tr>

    
    <tr>
      <td> Candidate First Name</td>
      <td> <input type="text" name="fname" class=" inputclass" placeholder="Enter First Name"></td>
      <td> <input type="text" name="mname" class=" inputclass" placeholder="Enter Middle Name"></td>
      <td> <input type="text" name="lname" class=" inputclass" placeholder="Enter Last Name"></td>
    </tr>

    
    <tr>
      <td> Certificate For</td>
      <td colspan="3"> <input type="text" name="certificate_technology" class=" inputclass" placeholder="Mention Technology Name"></td>
    </tr>
    
    <tr>
      <td> Certificate Requirement</td>
      <td colspan="3"> 
           <input type="radio" name="status" value="Urgent"> Urgent
           <input type="radio" name="status" value="Not Urgent">Not Urgent
      </td>
    </tr>
    
    <tr>
      <td> Certificate Request Remark</td>
      <td colspan="3"> <input type="text" name="remark" class=" inputclass"  value="Approval Request" readonly></td>
    </tr>
    
    
    <tr>
      <td colspan="4" align="center"> <input type="submit" value="Certificate Request Raise" class="btnclass"></td>
    </tr>
    
   </table>
  </form>
            
</body>
</html>