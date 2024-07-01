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
      background: linear-gradient(to right , deeppink , gold , limegreen , blue , purple);
      padding:10px;
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
      padding-top: -20px;
      color: black;
      text-shadow: 1px 1px white;
    }
    h1{
      padding-top: 10px;
      margin-top: -10px;
      text-shadow: 2px 2px black;
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
      width: 100%;
      border-radius: 20px;
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
    <h1> Aristan CRM - Create Ticketing Users </h1>
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

  <form name="f1" method="post" action="CreateTicketing.jsp" autocomplete="off">
   <table cellpadding="5" align="center">
<!--    <tr>
      <th colspan="2">
        <h2> Create Ticketing Users</h2>
      </th>
    </tr>-->


    <tr>
      <td> Ticketing Date</td>
      <td> <input type="date" name="tdate" class=" inputclass"></td>
    </tr>

    <tr>
      <td> Ticketing Time</td>
      <td> <input type="time" name="ttime" class=" inputclass"></td>
    </tr>

    <tr>
      <td> Ticketing Details</td>
      <td> <input type="text" name="tdetails" class=" inputclass"></td>
    </tr>

    <tr>
      <td> Client Name</td>
      <td> <input type="text" name="cname" class=" inputclass"></td>
    </tr>

    <tr>
      <td> Hand Over To</td>
      <td> <input type="text" name="hover" class=" inputclass"></td>
    </tr>

      <tr>
      <td> HandOver By</td>
      <td> <input type="text" name="hoby" class=" inputclass"></td>
    </tr>
    
    <tr>
      <td colspan="2" align="center"> <input type="submit" value="Submit Data" class="btnclass"></td>
    </tr>
    <tr>
      <td colspan="2" align="center"> <input type="reset" value=" Reset" class="btnclass"></td>
    </tr>
    
   </table>
  </form>
      
</body>
</html>