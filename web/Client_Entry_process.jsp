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
    h1{
        padding-top: 10px;
        margin-top: -10px;
        text-shadow: 2px 2px black;
      }
    form{
      margin-left: 20%;
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
    <h1> Aristan CRM - Client Entry </h1>
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

    <form name="f1" method="post" action="ClientEntry.jsp" autocomplete="off">
   <table cellpadding="5" align="center">
    
    <tr>
      <td>First Name</td>
      <td> <input type="text" name="fname" class="inputclass"></td>
    </tr>

    <tr>
      <td> Last Name</td>
      <td> <input type="text" name="lname" class=" inputclass"></td>
    </tr>

    <tr>
      <td> Profession</td>
      <td> <input type="text" name="profe" class=" inputclass"></td>
    </tr>
    
    <tr>
      <td> Nature Bussiness</td>
      <td> <input type="text" name="nbus" class=" inputclass"></td>
    </tr>

    <tr>
      <td>Phoneno</td>
      <td> <input type="number" name="phoneno" class=" inputclass"></td>
    </tr>

    <tr>
      <td> Email</td>
      <td> <input type="text" name="email" class=" inputclass"></td>
    </tr>

    <tr>
      <td>Address</td>
      <td> <textarea rows="3" cols="4" name="address" class="inputclass" ></textarea></td>
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