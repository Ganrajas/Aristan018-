<!DOCTYPE html>
<html>
<head>
  <title> www.aristan.com</title>
  <style type="text/css">
    body{
        margin: 0px;
        font-family: bold;
        background-image: url("back2.jpg");
        background-repeat: no-repeat;
        background-size: cover;
      }
      #brandname{
        background: linear-gradient(to right,deeppink,gold,limegreen,blue,purple);
        padding:20px;
        color: white;
        width: 100%;
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
      h2{
        padding-top: -20px;
        text-shadow: 1px 2px whitesmoke;
        color: black;
      }
      h1{
        padding-top: 10px;
        margin-top: -10px;
        text-shadow: 2px 3px black;
      }    

    form{
      margin-left: 30%;
      background-color: #91F5F5;
      width: 40%;
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
      border-radius: 8px;
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
        
        String sql="select * from ticket where tid="+id;
        
        ResultSet rs=st.executeQuery(sql);
        
        while(rs.next())
        {
        %>      


        <form name="f1" method="post" action="Update_process_Ticketing.jsp" autocomplete="off">
   <table cellpadding="5" align="center">
       
        <input type="hidden" name="tid" value="<%=rs.getString("tid")%>" class="inputclass"><br>
        
    <tr>
      <th colspan="2">
        <h2> Create Ticketing Users</h2>
      </th>
    </tr>
    
    <tr>
      <td> Ticketing Date</td>
      <td> <input type="date" name="tdate" class=" inputclass" value="<%=rs.getString("TICKETING_DATE")%>"></td>
    </tr>

    <tr>
      <td> Ticketing Time</td>
      <td> <input type="time" name="ttime" class=" inputclass" value="<%=rs.getString("TICKETING_TIME")%>"></td>
    </tr>

    <tr>
      <td> Ticketing Details</td>
      <td> <input type="text" name="tdetails" class=" inputclass" value="<%=rs.getString("TICKETING_DETAILS")%>"></td>
    </tr>

    <tr>
      <td> Client Name</td>
      <td> <input type="text" name="cname" class=" inputclass" value="<%=rs.getString("CLIENT_NAME")%>"></td>
    </tr>

    <tr>
      <td> Hand Over</td>
      <td> <input type="text" name="hover" class=" inputclass" value="<%=rs.getString("HAND_OVER")%>"></td>
    </tr>

    <tr>
      <td> HandOver By</td>
      <td> <input type="text" name="hoby" class=" inputclass" value="<%=rs.getString("HANDOVER_BY")%>"></td>
    </tr>
    
    <tr>
      <td colspan="2" align="center">
          <input type="Submit" value="Update" class="btnclass">
          <input type="Reset" value=" Reset" class="btnclass">
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