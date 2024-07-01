<!DOCTYPE html>
<html>
<head>
  <title> www.aristan.com</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
  <style type="text/css">
    body{
      margin: 0px;
    }
    #brandname{
      background:linear-gradient(to right,deeppink,gold,limegreen,blue,purple);
      padding: 10px;
      color: white;
      box-shadow: 0px 5px 15px rgba(0,0,0,0.8);
      position: sticky;
      top: 0;
      left: 0;
    }
    #tagline{
      margin-top: -30px;
    }
    form{
      margin-left: 15%;
      background-color: #91F5F5;
      width: 70%;
      text-align: center;
      margin-top: 10px; 
    }
    .inputclass{
      width: 100%;
      border-radius: 2px;
      padding:5px;
      border: none;
      
    }
    .btnclass{
      width: 20%;
      border-radius: 10px;
      padding: 7px;
      border: none;
      background-color: #000123;
      color: white;
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
        
  <script>
      function hideDate()
      {
           document.getElementById("showDate_id").style.display="none";
      }
      function showDate()
      {
           document.getElementById("showDate_id").style.display="";
      }
  </script>
</head>
<body onload="hideDate()">  
    <div id="brandname">
    <h2> Aristan CRM </h2>
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

    <form name="f1" method="post" action="Add_Placement_Client.jsp" autocomplete="off">
   <table cellpadding="5" align="center">
    <tr>
      <th colspan="4">
        <h2> Add Placement Client</h2>
      </th>
    </tr>

    <tr>
      <td> Company Name</td>
      <td> <input type="text" name="comp_name" class=" inputclass"></td>

      <td> Company URL</td>
      <td> <input type="text" name="comp_url" class=" inputclass"></td>
    </tr>
    
    <tr>
      <td> First Name</td>
      <td> <input type="text" name="fname" class=" inputclass"></td>
  
      <td> Last Name</td>
      <td> <input type="text" name="lname" class=" inputclass"></td>
    </tr>
    
    <tr>
      <td> Contact No</td>
      <td> <input type="text" name="contactno" class=" inputclass"></td>
   
      <td>Email Id</td>
      <td> <input type="text" name="email" class=" inputclass"></td>
    </tr>

    <tr>
      <td> Technology Requirement</td>
      <td colspan="3">
          <input type="checkbox" name="tech_require"  value="Java">JAVA
          <input type="checkbox" name="tech_require"  value="PHP">PHP
          <input type="checkbox" name="tech_require"  value="Web Developer">WEB DEVELOPER
          <input type="checkbox" name="tech_require"  value="Python">PYTHON
          <input type="checkbox" name="tech_require"  value="Database">DATABASE
      </td>
    </tr>
    
    <tr>
      <td> Requirement Status</td>
      <td colspan="3">
          <input type="radio" name="require_time"  value="Urgent" onclick="hideDate()">Urgent
          <input type="radio" name="require_time"  value="Close" onclick="hideDate()">Position Close
          <input type="radio" name="require_time"  value="Next Week" onclick="showDate()">Next Week
          <input type="radio" name="require_time"  value="Next Month" onclick="showDate()">Next Month
      </td>
    </tr>
    
    <tr id="showDate_id">
        <td>Select Date</td>
        <td><input type="date" name="select_date" class="inputclass"></td>
    </tr>
    
    <tr>
        <td>Remark</td>
        <td colspan="3">
            <textarea rows="3" cols="4" name="remark" class="inputclass"></textarea>
        </td>
    </tr>
    
     <tr>
        <td>Address</td>
        <td colspan="3">
            <textarea rows="3" cols="4" name="address" class="inputclass"></textarea>
        </td>
    </tr>

    
    <tr>
        <td colspan="4"> 
            <input type="submit" value="Submit" class="btnclass">
            <input type="reset" value=" Reset" class="btnclass">
      </td>
    </tr>
    
   </table>
  </form>
            
</body>
</html>