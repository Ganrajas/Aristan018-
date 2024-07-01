<!DOCTYPE html>
<html>
<head>
  <title> www.aristan.com</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style type="text/css">
          body{     
              margin: 0px;
            }
            #brandname{
            background:linear-gradient(to right,deeppink,gold,limegreen,blue,purple);
            padding: 15px;
            color: white;
            width: 100%;
            position: Sticky;
            top: 0;
            left: 0;
            box-shadow: 0px 5px 15px rgba(0,0,0,0.8);
          }
          #tagline{
            margin-top: -30px;
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
            padding-top: -25px;
            text-shadow: 1px 1px black;
            color: red;
            font-size: 33px;
          }
          h1{
            padding-top: 10px;
            margin-top: -10px;
            text-shadow: 1px 2px black;
          }
          
            form{
              margin-left: 25%;
              background-color: #91F5F5;
              width: 50%;
              text-align: center;
              margin-top: 40px; 
            }
            .inputclass{
              width: 100%;
              border-radius: 2px;
              padding:5px;
              border: none;

            }
            .btnclass{
              width: 40%;
              border-radius: 4px;
              padding:5px;
              border: none;
              background-color: #000123;
              color: white;
              padding: 5px;
            }
            .btnclass:hover{
                background-color: orangered;
                cursor: pointer;
            }
            #gotobutton{
                margin-top: 30px;
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
    <h1> Aristan CRM - Employee Payment Entry </h1>
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

  <form name="f1" method="post" action="EmployeePaymentEntry.jsp" autocomplete="off">
   <table cellpadding="5" align="center">
    
    <tr>
      <td> Paymant Date</td>
      <td> <input type="date" name="pdate" class="inputclass"></td>
    </tr>

    <tr>
      <td> First Name</td>
      <td> <input type="text" name="fname" class=" inputclass"></td>
    </tr>

    <tr>
      <td> Last Name</td>
      <td> <input type="text" name="lname" class=" inputclass"></td>
    </tr>
    
    <tr>
      <td> Job</td>
      <td> <input type="text" name="job" class=" inputclass"></td>
    </tr>

    <tr>
      <td> Amount</td>
      <td> <input type="text" name="amt" class=" inputclass"></td>
    </tr>

    <tr>
      <td> PayBy</td>
      <td> 
          <input type="radio" name="pay"  value="UPI">UPI
          <input type="radio" name="pay"  value="NBANK">NetBanking
          <input type="radio" name="pay"  value="CASH">Cash
      </td>
    </tr>

    
    <tr>
      <td colspan="2" align="center"> 
          <input type="submit" value="Submit Entry" class="btnclass">
          <input type="reset" value="Reset" class="btnclass">
      </td>
    </tr>
    
   </table>
  </form>
            
</body>
</html>