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
      position: sticky;
      top: 0;
      right: 0px;
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
    h1{
      padding-top: 10px;
      margin-top: -10px;
      text-shadow: 2px 3px black;
    }
    h2{
      //padding-top: 10px;
      margin-top: -50px;
      text-shadow: 1px 1px black;
      text-align:center;
    }
    form{
      margin-left: 20%;
      background-color: #91F5F5;
      width: 60%;
      text-align: center;
      margin-top: 20px; 
      padding: 30px;
    }
    .inputclass{
      width: 90%;
      border-radius: 2px;
      padding:5px;
      border: none;
    }
    .btnclass{
      width: 40%;
      border-radius: 2px;
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
    .setTable{
        border-collapse: collapse;
        border: 1px solid white;
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
      
      function setInstallment_date()
      {
          var month_list=["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"];
          
          
          var datex=document.f1.idate1.value;
          var date=new Date(datex);
         
          
          date.setDate(date.getDate()+30);
          var d1=date.getDate();
          var m1=month_list[date.getMonth()];
         
          var y1=date.getFullYear();
          document.f1.idate2.value=d1+" - "+m1+" - "+y1;
          
          date.setDate(date.getDate()+30);
          var d2=date.getDate();
          var m2=month_list[date.getMonth()];
          var y2=date.getFullYear();
          document.f1.idate3.value=d2+" - "+m2+" - "+y2;
        
      }
      function show_fees()
      {
          var tech=document.f1.tech.value;
          
          if(tech=="Java")
          {
              document.f1.fees.value=20000;
          }
          if(tech=="Phython")
          {
              document.f1.fees.value=30000;
          }
          if(tech=="Oracle")
          {
              document.f1.fees.value=18000;
          }
          if(tech=="PHP")
          {
              document.f1.fees.value=28000;
          }
          if(tech=="C Programing")
          {
              document.f1.fees.value=4000;
          }
          if(tech=="C++")
          {
              document.f1.fees.value=6000;
          }     
      }
      
      function set_installment()
      {
          var fees_amt=document.f1.fees.value;
          
          if(fees_amt>=10000)
          {
              document.f1.iamt1.value=parseInt(fees_amt/3);
              document.f1.iamt2.value=parseInt(fees_amt/3);
              document.f1.iamt3.value=parseInt(fees_amt/3);
          }
          else if(fees_amt>=7000)
          {
              document.f1.iamt1.value=parseInt(fees_amt/2);
              document.f1.iamt2.value=parseInt(fees_amt/2);
              document.f1.iamt3.value=0;
          }
          else
          {
              document.f1.iamt1.value=parseInt(fees_amt);
              document.f1.iamt2.value=0;
              document.f1.iamt3.value=0;
          }
      }
      
  </script>
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

    <form name="f1" method="post" action="Candidate_Registration.jsp" autocomplete="off">
   <table cellpadding="5" align="center">
  

    <tr>
      <td> First Name</td>
      <td> <input type="text" name="fname" class=" inputclass"></td>
    
      <td> Last Name</td>
      <td> <input type="text" name="lname" class=" inputclass"></td>
    </tr>
    
    <tr>
      <td> Email</td>
      <td> <input type="text" name="email" class=" inputclass"></td>
    
      <td>Phone Number</td>
      <td> <input type="text" name="phoneno" class=" inputclass"></td>
    </tr>
    
    <tr>
      <td> Date Of Birth</td>
      <td> <input type="date" name="dob" class=" inputclass"></td>

      <td> Branch</td>
      <td> <input type="text" name="branch" class=" inputclass"></td>
    </tr>
    
     <tr>
         <td> Gender</td>
      <td> 
      <input type="radio" name="gen"  value="Male">Male
      <input type="radio" name="gen"  value="Female">Female
      </td>
      
      <td> Technology</td>
      <td>
          <select name="tech" onchange="show_fees()" class=" inputclass">
              <option selected>Select Technology</option>
              <option value="Java">Java</option>
              <option value="Phython">Python</option>
              <option value="Oracle">Oracle</option>
              <option value="PHP">PHP</option>
              <option value="C Programming">C Programming</option>
              <option value="CPP">C++</option>
          </select>
      </td>
      
    <tr>
      <td> Fees</td>
      <td colspan="3"> <input type="text" name="fees" class=" inputclass"></td>
    </tr>
    
   </table>
    
      
      <input type="button" value="Click Here To Set Installment" class="btnclass" onclick="set_installment()">
       
      <table cellpadding="7" align="center" border="1" width="90%" class="setTable">
              
       <tr>
           <td>Sr No</td>
           <td>Date</td>
            <td>Installment Amount</td>
            <td>Fess Status</td>
       </tr> 
       
        <tr>
           <td>1</td>
           <td><input type="date" name="idate1" class=" inputclass" onchange="setInstallment_date()"></td>
           <td><input type="number" name="iamt1" value="0" readonly class=" inputclass" ></td>
           <td><input type="text" name="feesstatus1" value="Unpaid" readonly class=" inputclass"></td>
       </tr> 
       
        <tr>
           <td>2</td>
           <td><input type="text" name="idate2" class=" inputclass"></td>
           <td><input type="number" name="iamt2" value="0" readonly class=" inputclass"></td>
           <td><input type="text" name="feesstatus2" value="Unpaid" readonly class=" inputclass"></td>
       </tr> 
       
       <tr>
           <td>3</td>
           <td><input type="text" name="idate3" class=" inputclass"></td>
           <td><input type="number" name="iamt3" value="0" readonly class=" inputclass" ></td>
           <td><input type="text" name="feesstatus3" value="Unpaid" readonly class=" inputclass"></td>
       </tr> 
         
    <tr>
        <td colspan="4"> 
            <input type="submit" value="Register" class="btnclass">
            <input type="reset" value=" Reset" class="btnclass">
        </td>
    </tr>

 </table>
  </form>
      
</body>
</html>