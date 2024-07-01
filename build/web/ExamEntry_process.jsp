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
      background: linear-gradient(to right,deeppink,gold,limegreen,blue,purple);
      padding: 10px;
      color: white;
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
      margin-top: -25px;
      text-align: center;
      color: white;
      width: 100%;
      padding-bottom: 20px;     
    }
    h2{
      padding-top: -10px;
      color: black;
      font-size: 27px;
      text-shadow: 1px 1px white;
    }
    h1{
      padding-top: 10px;
      margin-top: -10px;
      text-shadow: 1px 2px black;
    }
    form{
      margin-left: 15%;
      background-color: #91F5F5;//#36FFFB;
      width: 70%;  
      margin-top: 20px; 
    }
    .inputclass{
      width: 80%;
      border-radius: 2px;
      padding:5px;
      border: none;
    }
    .btnclass{
      width: 35%;
      border-radius: 4px;
      padding:5px;
      border: none;
      background-color: #000123;
      color: white;
      padding: 5px;
    }
    .btnclass:hover{
        background-color: white;
        color: black;
        cursor: pointer;
    }
    .datashift{
        float:right;
    }
    .marktable{
        border-collapse: collapse;
        border: 1px solid #000123;
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
  <script>
      function result_fun()
      {
         var hr_round=parseInt(document.f1.hr_round.value); 
         var technical_f2f=parseInt(document.f1.technical_f2f.value);
         var technical_wtest=parseInt(document.f1.technical_wtest.value);
         
         var tot_mark= hr_round + technical_f2f + technical_wtest;
         
         document.f1.obtained_mark.value=tot_mark;
         
         if(hr_round>=10 && technical_f2f>=20 &&  technical_wtest>=35)
         {
             document.f1.result.value="Pass";
         }
         else
         {
             document.f1.result.value="Fail";
         }
         
      }
  </script>
</head>
<body>  
    <div id="brandname">
    <h1> Aristan CRM - Candidate Exam Record  Entry </h1>
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

  <form name="f1" method="post" action="ExamEntry.jsp" autocomplete="off">
   <table cellpadding="7" align="center"  width="90%">
   
    <tr>
        <td class="datashift">Register Id</td>
      <td> <input type="number" name="rid" class="inputclass"></td>
      
      <td class="datashift">Exam Date</td>
      <td> <input type="date" name="edate" class="inputclass"></td>
    </tr>
    
    <tr>
      <td class="datashift">First Name</td>
      <td> <input type="text" name="fname" class="inputclass"></td>
    
      <td class="datashift"> Last Name</td>
      <td> <input type="text" name="lname" class=" inputclass"></td>
    </tr>
    
     <tr>
      <td class="datashift"> Course Name</td>
      <td> 
          <select name="selected_tech" class=" inputclass">
              <option value="" disabled selected>---Select FSD Technology---</option>
              <option value="Java FSD">Java FSD</option>
              <option value="Python FSD">Python FSD</option>
              <option value="PHP FSD">PHP FSD</option>
              <option value="Web FSD">Web FSD</option>
              <option value="" disabled>Select Internship Technology</option>
              <option value="Java Internship">Java Internship</option>
              <option value="PHP Internship">PHP Internship</option>
              <option value="Python Internship">Python Internship</option>
          </select>
      </td>
      <td class="datashift">Sub-Technology</td>
      <td> <input type="text" name="sub_tech" class="inputclass"></td>
    </tr>
   </table>
      
      <table cellpadding="7" align="center"  width="90%" border="1"  class="marktable">

    <tr>
        <th> HR Round Marks-20 </th>
        <th> Technical F2F Marks-30 </th>
         <th> Tech Written Test Mark-50</th>
    </tr>
    <tr>
      <td> <input type="number" name="hr_round" class=" inputclass" min="0" max="20" placeholder="0-20">       
      </td>
   
     
      <td> <input type="number" name="technical_f2f" class=" inputclass" min="0" max="30" placeholder="0-30">          
      </td>
   
     
      <td> 
          <input type="number" name="technical_wtest" class=" inputclass" min="0" max="50" onkeyup="result_fun()" placeholder="0-50">
      </td>
    </tr>    
    <tr>
      <td>Obtained Marks</td>
      <td colspan="2"> <input type="number" name="obtained_mark" class=" inputclass"></td>
    </tr>

    <tr>
        <td> Result</td>
        <td colspan="2"> <input type="text" name="result" class=" inputclass"></td>
    </tr>

    <tr>
      <td colspan="4" align="center"> 
          <input type="submit" value="Submit Entry" class="btnclass">
          <input type="reset" value="Reset" class="btnclass">
      </td>
    </tr>
    
   </table>
  </form>
            
</body>
</html>