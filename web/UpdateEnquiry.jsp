<!DOCTYPE html>
<html>
<head>
  <title> www.aristan.com</title>
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
            margin-top: -10px;
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
            }        }
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
        
        if(document.f1.toc[0].checked)
        {
            for( i=0 ; i<=5 ; i++)
            {
                if(document.f1.mtech[i].checked)
                {
                document.f1.mtech[i].checked=true;
                 }
            
            alert("error");
            document.getElementById("row_show_data_mod").display="";
            document.getElementById("row_mod_id").style.display="";
           
        }
        
       
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
<body>  
    <div id="brandname">
    <h1> Aristan CRM - New Enquiry  Entry </h1>
    <p id="tagline"> Education Empowerment </p>
    </div>
<%@page import="java.sql.*,java.util.*"%>
  
<%
    
    int id=Integer.parseInt(request.getParameter("id"));
     
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        
        String sql="select * from enquiry where eid="+id;
        
        ResultSet rs=st.executeQuery(sql);
        
        while(rs.next())
        {
        %>      

        <form name="f1" method="post" action="EnquiryEntry.jsp" autocomplete="off">
      
      <table cellpadding="7"  align="center" width="90%" border="1">
          
           <input type="hidden" name="eid" value="<%=rs.getString("eid")%>" class="inputclass"><br>
 
    <tr>
      <td> Enquiry Date</td>
      <td> <input type="text" name="enquiry_date" class=" inputclass" value="<%=rs.getString("ENQUIRY_DATE")%>" readonly></td>
    
      <td> Enquiry Time</td>
      <td> <input type="text" name="enquiry_time" class=" inputclass" value="<%=rs.getString("ENQUIRY_TIME")%>" readonly></td>
    </tr>
    
    <tr>
      <td> First Name</td>
      <td> <input type="text" name="fname" class=" inputclass" value="<%=rs.getString("FIRST_NAME")%>"></td>
    
      <td> Last Name</td>
      <td> <input type="text" name="lname" class=" inputclass" value="<%=rs.getString("LAST_NAME")%>"></td>
    </tr>

    <tr>
      <td> Email</td>
      <td> <input type="text" name="email" class=" inputclass" value="<%=rs.getString("EMAIL")%>"></td>
    
      <td> Phone No</td>
      <td> <input type="text" name="phoneno" class=" inputclass" value="<%=rs.getString("PHONENO")%>"></td>
    </tr>
 <tr>
      <td> Gender</td>
      <td> 
          <input type="radio" name="gen" value="Male"<%=rs.getString("GENDER").equals("Male")?"checked":"unchecked"%>>Male
          <input type="radio" name="gen" value="Female"<%=rs.getString("GENDER").equals("Female")?"checked":"unchecked"%>>Female
      </td>
    
      <td> Time Required</td>
      <td> 
          <input type="radio" name="reqtime" value="Morn" <%=rs.getString("RTIME").equals("Morn")?"checked":"unchecked"%>>Morn
          <input type="radio" name="reqtime" value="Noon"<%=rs.getString("RTIME").equals("Noon")?"checked":"unchecked"%>>Noon
          <input type="radio" name="reqtime" value="Evening"<%=rs.getString("RTIME").equals("Evening")?"checked":"unchecked"%>>Evening
          <input type="radio" name="reqtime" value="Any Time"<%=rs.getString("RTIME").equals("Any Time")?"checked":"unchecked"%>>Any Time
      </td>
    </tr>
    
    <tr>         
      <td> Select Course</td>
      <td colspan="3"> 
          <input type="radio" name="toc" value="Modular" onclick="show_mod_fun()" <%=rs.getString("COURSE").equals("Modular")?"checked":"unchecked"%> onclick="show_mod_fun()">Modular Technology
          <input type="radio" name="toc" value="Internship" onclick="show_intern_fun()"<%=rs.getString("COURSE").equals("Internship")?"checked":"unchecked"%> onclick="show_intern_fun()">Internship Technology
          <input type="radio" name="toc" value="Job Oriented" onclick="show_job_fun()"<%=rs.getString("COURSE").equals("Job Oriented")?"checked":"unchecked"%> onclick="show_job_fun()">Job Oriented Technology
      </td>
    </tr>
    
    <tr>         
      <td> Select Modular</td>
      <td colspan="3"> 
          <input type="checkbox" name="mtech" value="C Programming" <%=rs.getString("modular").equals("C Programming")?"checked":"unchecked"%> onclick="show_mod_fun()">C programming
          <input type="checkbox" name="mtech" value="CPP Programming"<%=rs.getString("modular").equals("CPP Programming")?"checked":"unchecked"%> onclick="show_intern_fun()">CPP programming
                </td>
    </tr>
    
   
    
    <tr id="row_intern_id">
        <td>Internship Technology</td>
    <td colspan="3">
        <input type="radio" name="itech" value="Java Internship" onclick="show_tcost_for_intern_radio_button()"<%=rs.getString("intern").equals("Java Internship")?"checked":"unchecked"%>>Java Internship
        <input type="radio" name="itech" value="Python Internship" onclick="show_tcost_for_intern_radio_button()"<%=rs.getString("intern").equals("Python Internship")?"checked":"unchecked"%>>Python Internship
        <input type="radio" name="itech" value="PHP Internship" onclick="show_tcost_for_intern_radio_button()"<%=rs.getString("intern").equals("PHP Internship")?"checked":"unchecked"%>>PHP Internship
        <input type="radio" name="itech" value="Web Internship" onclick="show_tcost_for_intern_radio_button()"<%=rs.getString("intern").equals("Web Internship")?"checked":"unchecked"%>>Web Internship
    </td>
    </tr>
    
    <tr id="row_job_id">
        <td>Job Oriented Training</td>
    <td colspan="3">
        <input type="radio" name="jtech" value="Java FSD" onclick="show_tcost_for_job_radio_button()"<%=rs.getString("job").equals("Java FSD")?"checked":"unchecked"%>>Java FSD
        <input type="radio" name="jtech" value="Python FSD" onclick="show_tcost_for_job_radio_button()"<%=rs.getString("job").equals("Python FSD")?"checked":"unchecked"%>>Python FSD
        <input type="radio" name="jtech" value="PHP FSD" onclick="show_tcost_for_job_radio_button()" <%=rs.getString("job").equals("PHP FSD")?"checked":"unchecked"%>>PHP FSD
        <input type="radio" name="jtech" value="Web FSD" onclick="show_tcost_for_job_radio_button()" <%=rs.getString("job").equals("Web FSD")?"checked":"unchecked"%>>Web FSD
    </td>
    </tr>
    
    <tr id="row_show_data_mod">
      <td>Modular Technology</td>
      <td colspan="3"> <input type="text" name="m_tech" class=" inputclass" value="<%=rs.getString("modular")%>"></td>
    </tr>

    
     
    <tr>
      <td> Training Cost</td>
      <td colspan="3"> <input type="text" name="tcost" class=" inputclass" value="<%=rs.getString("TCOST")%>"></td>
    </tr>
   
    <tr>
        <td align="center" colspan="4"> 
            <a href="Enquiry_management.jsp">
                 <input type="button" value="Go TO Enquiry Management" class="btnclass">
            </a>
            
            <input type="submit" value="Update Enquiry" class="btnclass">
            <input type="reset" value=" Reset" class="btnclass">
            
        </td>
    </tr>
    
   </table>
  </form>
     <%
        }//end of while loop
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
    %>
   
         
</body>
</html>