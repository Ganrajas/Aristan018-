<!DOCTYPE html>
<html>
<head>
  <title> www.aristan.com</title>
  <style type="text/css">
    body{
            margin: 0px;
            font-family: bold;
          }
          #brandname{
            background: linear-gradient(to right,deeppink,gold,limegreen,blue,purple);
            padding:20px;
            color: white;
            width: 150%;
            box-shadow: 0px 5px 15px rgba(0,0,0,0.8);
            position: Sticky;
            top: 0;
            left: 0;
          }
          #tagline{
            margin-top: -10px;
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
            text-shadow: 2px 2px black;
          }
    form{
      margin-left: 10%;
      background-color: #91F5F5;
      width: 80%;
      font-family: bold;
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
      width: 30%;
      border-radius: 10px;
      padding:6px;
      font-size: 18px;
      border: none;
      background-color: #000123;
      color: white;
    }
    .btnclass:hover{
        background-color: orangered;
        cursor: pointer;
    }
    

  </style>
</head>
<body> 
    
    <div id="brandname">
    <h1> Aristan CRM </h1>
    <p id="tagline"> Education Empowerment </p>
    </div>
    
    <%@page import="java.sql.*,java.util.*"%>
<%
    int id=Integer.parseInt(request.getParameter("id"));
     
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        
        String sql="select * from candidate where cid="+id;
        
        ResultSet rs=st.executeQuery(sql);
        
        while(rs.next())
        {
        %>      


        <form name="f1" method="post" action="Update_process_Candidate.jsp" autocomplete="off">
   <table cellpadding="7" align="center">
       
        <input type="hidden" name="cid" value="<%=rs.getString("cid")%>" class="inputclass"><br>
        
    <tr>
      <th colspan="6">
        <h2> Update Registered Candidate</h2>
      </th>
    </tr>
    
    <tr>
      <td>FIRST NAME</td>
      <td> <input type="text" name="fname" class=" inputclass" value="<%=rs.getString("FIRST_NAME")%>"></td>
   
      <td> LAST NAME</td>
      <td> <input type="text" name="lname" class=" inputclass" value="<%=rs.getString("LAST_NAME")%>"></td>
    
      <td> DATE OF BIRTH</td>
      <td> <input type="date" name="dob" class=" inputclass" value="<%=rs.getString("DOB")%>"></td>
    </tr>
    
    <tr>
      <td>EMAIL</td>
      <td> <input type="text" name="email" class=" inputclass" value="<%=rs.getString("EMAIL")%>"></td>
    
      <td> PHONENO</td>
      <td> <input type="text" name="phoneno" class=" inputclass" value="<%=rs.getString("PHONENO")%>"></td>
   
      <td>BRANCH</td>
      <td> <input type="text" name="branch" class=" inputclass" value="<%=rs.getString("BRANCH")%>"></td>
    </tr>

    <tr>
      <td> GENDER</td>
      <td> <input type="text" name="gen" class=" inputclass" value="<%=rs.getString("GENDER")%>"></td>
   
      <td>TECHNOLOGY</td>
      <td> <input type="text" name="tech" class=" inputclass" value="<%=rs.getString("TECHNOLOGY")%>"></td>
      
      <td> FEES</td>
      <td> <input type="text" name="fees" class=" inputclass" value="<%=rs.getString("FEES")%>"></td>
    </tr>
    
    <tr>
      <td>IDATE1</td>
      <td> <input type="text" name="idate1" class=" inputclass" value="<%=rs.getString("IDATE1")%>"></td>
  
      <td> IDATE2</td>
      <td> <input type="text" name="idate2" class=" inputclass" value="<%=rs.getString("IDATE2")%>"></td>

      <td>IDATE3</td>
      <td> <input type="text" name="idate3" class=" inputclass" value="<%=rs.getString("IDATE3")%>"></td>
    </tr>

    <tr>
      <td> IAMT1</td>
      <td> <input type="text" name="iamt1" class=" inputclass" value="<%=rs.getString("IAMT1")%>"></td>
   
      <td>IAMT2</td>
      <td> <input type="text" name="iamt2" class=" inputclass" value="<%=rs.getString("IAMT2")%>"></td>
  
      <td> IAMT3</td>
      <td> <input type="text" name="iamt3" class=" inputclass" value="<%=rs.getString("IAMT3")%>"></td>
    </tr>
    
    <tr>
      <td colspan="6">
          <input type="submit" value="Update" class="btnclass">
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