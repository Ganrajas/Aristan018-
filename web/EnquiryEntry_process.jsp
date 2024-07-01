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
            padding:12px;
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
            margin-top: -25px;
            text-align: center;
            color: white;
            width: 100%;
            padding-bottom: 20px;     
          }
          h1{
            padding-top: 10px;
            margin-top: -10px;
            text-shadow: 1px 2px black;
          }
            form{
              margin-left: 10%;
              background-color: #91F5F5;
              width: 80%;
              margin-top: 20px; 
              font-size: 15px;
              font-family: Arial;
              padding: 20px;
            }
            .inputclass{
              width: 80%;
              border-radius: 2px;
              padding:5px;
              border: none;
            }
            .btnclass{
              width: 30%;
              border-radius: 2px;
              padding:7px;
              border: none;
              background-color: #000123;
              color: white;
              padding: 5px;
            }
            .btnclass:hover{
                background-color: orangered;
                cursor: pointer;
            }
            table{
                border-collapse: collapse;
                border:1px solid white;
                margin-top: 30px;               
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
      
      function show_tcost_for_all_checkbox()
      {
        document.getElementById("row_show_data_mod").style.display="";
        document.getElementById("row_show_data_intern").style.display="none";
        document.getElementById("row_show_data_job").style.display="none";
        var tcostlist=[5000,6000,7000,7000,6000,7000];
        var fees=0;
        var techlist="";
        for(i=0 ; i<=5; i++)
        {
            if(document.f1.mtech[i].checked==true)
            {
                techlist=techlist+document.f1.mtech[i].value+" ";
                fees=fees+tcostlist[i];
            }
        }
        document.f1.m_tech.value=techlist;
        document.f1.tcost.value=fees;
    }
   
       function show_tcost_for_intern_radio_button()
      {
        document.getElementById("row_show_data_mod").style.display="none";
        document.getElementById("row_show_data_intern").style.display="";
        document.getElementById("row_show_data_job").style.display="none";
        
        var selected_itern=document.f1.itech.value;
        document.f1.i_tech.value=selected_itern;
        if(selected_itern=="Java Internship")
        {
            document.f1.tcost.value=18700;
            
        }
        if(selected_itern=="Python Internship")
        {
            document.f1.tcost.value=19700;
        }
        if(selected_itern=="PHP Internship")
        {
            document.f1.tcost.value=18700;
        }
         if(selected_itern=="Web Internship")
        {
            document.f1.tcost.value=16700;
        }
      }
      
      
       function show_tcost_for_job_radio_button()
      {
        document.getElementById("row_show_data_mod").style.display="none";
        document.getElementById("row_show_data_intern").style.display="none";
        document.getElementById("row_show_data_job").style.display="";
        
        var selected_job=document.f1.jtech.value;
        document.f1.j_tech.value=selected_job;
        if(selected_job=="Java FSD")
        {
            document.f1.tcost.value=35700;
            
        }
        if(selected_job=="Python FSD")
        {
            document.f1.tcost.value=39700;
        }
        if(selected_job=="PHP FSD")
        {
            document.f1.tcost.value=29700;
        }
        if(selected_job=="Web FSD")
        {
            document.f1.tcost.value=27500;
        }
        
      }
      
      
    function show_date_time_fun()
    {
        var d=new Date();
        document.f1.enquiry_date.value=d.toLocaleDateString();
        document.f1.enquiry_time.value=d.toLocaleTimeString();
        
        document.getElementById("row_mod_id").style.display="none";
        document.getElementById("row_intern_id").style.display="none";
        document.getElementById("row_job_id").style.display="none";
        
        document.getElementById("row_show_data_mod").style.display="none";
        document.getElementById("row_show_data_intern").style.display="none";
        document.getElementById("row_show_data_job").style.display="none";
    }
    
     function show_mod_fun()
    {
            document.f1.tcost.value="";
            document.f1.m_tech.value="";
            document.f1.i_tech.value="";
            document.f1.j_tech.value="";
    
        document.getElementById("row_mod_id").style.display="";
        document.getElementById("row_intern_id").style.display="none";
        document.getElementById("row_job_id").style.display="none";
        
        document.getElementById("row_show_data_mod").display="";
        document.getElementById("row_show_data_intern").display="none";
        document.getElementById("row_show_data_job").display="none";

    }
    function show_intern_fun()
    {
            document.f1.tcost.value="";
            document.f1.m_tech.value="";
            document.f1.i_tech.value="";
            document.f1.j_tech.value="";
    
        document.getElementById("row_mod_id").style.display="none";
        document.getElementById("row_intern_id").style.display="";
        document.getElementById("row_job_id").style.display="none";
        
        document.getElementById("row_show_data_mod").display="none";
        document.getElementById("row_show_data_intern").display="";
        document.getElementById("row_show_data_job").display="none";

        
    }
    function show_job_fun()
    {
            document.f1.tcost.value="";
            document.f1.m_tech.value="";
            document.f1.i_tech.value="";
            document.f1.j_tech.value="";
    
        document.getElementById("row_mod_id").style.display="none";
        document.getElementById("row_intern_id").style.display="none";
        document.getElementById("row_job_id").style.display="";
        
        document.getElementById("row_show_data_mod").display="none";
        document.getElementById("row_show_data_intern").display="none";
        document.getElementById("row_show_data_job").display="";

    }
  </script>
</head>
<body onload="show_date_time_fun()">  
    <div id="brandname">
    <h1> Aristan CRM - New Enquiry  Entry </h1>
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

  <form name="f1" method="post" action="EnquiryEntry.jsp" autocomplete="off">
      
      <table cellpadding="7"  align="center" width="90%" border="1">
 
    <tr>
      <td> Enquiry Date</td>
      <td> <input type="text" name="enquiry_date" class=" inputclass" readonly></td>
    
      <td> Enquiry Time</td>
      <td> <input type="text" name="enquiry_time" class=" inputclass" readonly></td>
    </tr>
    
    <tr>
      <td> First Name</td>
      <td> <input type="text" name="fname" class=" inputclass"></td>
    
      <td> Last Name</td>
      <td> <input type="text" name="lname" class=" inputclass"></td>
    </tr>

    <tr>
      <td> Email</td>
      <td> <input type="text" name="email" class=" inputclass"></td>
    
      <td> Phone No</td>
      <td> <input type="text" name="phoneno" class=" inputclass"></td>
    </tr>

    <tr>
      <td> Gender</td>
      <td> 
          <input type="radio" name="gen" value="Male">Male
          <input type="radio" name="gen" value="Female">Female
      </td>
    
      <td> Time Required</td>
      <td> 
          <input type="radio" name="reqtime" value="Morn">Morn
          <input type="radio" name="reqtime" value="Noon">Noon
          <input type="radio" name="reqtime" value="Evening">Evening
          <input type="radio" name="reqtime" value="Any_Time">Any Time
      </td>
    </tr>
    
      </table>
      
      
      <table cellpadding="7"  align="center" width="90%" border="1">
    
    <tr>         
      <td> Select Course</td>
      <td colspan="3"> 
          <input type="radio" name="toc" value="Modular" onclick="show_mod_fun()">Modular 
          <input type="radio" name="toc" value="Internship" onclick="show_intern_fun()">Internship 
          <input type="radio" name="toc" value="Job Oriented" onclick="show_job_fun()">Job Oriented      </td>
    </tr>
    
    <tr id="row_mod_id">
        <td> Modular Technology</td>
    <td colspan="3">
       <input type="checkbox" name="mtech" value="C Programming" onclick="show_tcost_for_all_checkbox()">C Programming
       <input type="checkbox" name="mtech" value="CPP Programming" onclick="show_tcost_for_all_checkbox()">CPP Programming
       <input type="checkbox" name="mtech" value="Core Java" onclick="show_tcost_for_all_checkbox()">Core Java 
        <input type="checkbox" name="mtech" value="Python" onclick="show_tcost_for_all_checkbox()">Python
        <input type="checkbox" name="mtech" value="PHP" onclick="show_tcost_for_all_checkbox()">PHP
        <input type="checkbox" name="mtech" value="Javascript" onclick="show_tcost_for_all_checkbox()">Java Script
    </td>
    </tr>
    
    <tr id="row_intern_id">
        <td>Internship Technology</td>
    <td colspan="3">
        <input type="radio" name="itech" value="Java Internship" onclick="show_tcost_for_intern_radio_button()">Java Internship
        <input type="radio" name="itech" value="Python Internship" onclick="show_tcost_for_intern_radio_button()">Python Internship
        <input type="radio" name="itech" value="PHP Internship" onclick="show_tcost_for_intern_radio_button()">PHP Internship
        <input type="radio" name="itech" value="Web Internship" onclick="show_tcost_for_intern_radio_button()">Web Internship
    </td>
    </tr>
    
    <tr id="row_job_id">
        <td>Job Oriented Training</td>
    <td colspan="3">
        <input type="radio" name="jtech" value="Java FSD" onclick="show_tcost_for_job_radio_button()">Java FSD
        <input type="radio" name="jtech" value="Python FSD" onclick="show_tcost_for_job_radio_button()">Python FSD
        <input type="radio" name="jtech" value="PHP FSD" onclick="show_tcost_for_job_radio_button()">PHP FSD
        <input type="radio" name="jtech" value="Web FSD" onclick="show_tcost_for_job_radio_button()">Web FSD
    </td>
    </tr>
    
    <tr id="row_show_data_mod">
      <td>Modular Technology</td>
      <td colspan="3"> <input type="text" name="m_tech" class=" inputclass"></td>
    </tr>
    <tr id="row_show_data_intern">
      <td>Internship Technology</td>
      <td colspan="3"> <input type="text" name="i_tech" class=" inputclass"></td>
    </tr>
    <tr id="row_show_data_job">
      <td>Job Oriented Technology</td>
      <td colspan="3"> <input type="text" name="j_tech" class=" inputclass"></td>
    </tr>

    
    <tr>
      <td> Training Cost</td>
      <td colspan="3"> <input type="text" name="tcost" class=" inputclass"></td>
    </tr>

    <tr>
        <td align="center" colspan="4"> 
            <a href="Enquiry_management.jsp">
                 <input type="button" value="Go TO Enquiry Management" class="btnclass">
            </a>
            
            <input type="submit" value="Submit Enquiry" class="btnclass">
            <input type="reset" value=" Reset" class="btnclass">
            
        </td>
    </tr>
    
   </table>
  </form>
         
</body>
</html>