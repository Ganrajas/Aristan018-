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
              width: 40%;
              border-radius: 10px;
              padding:7px;
              border: none;
              background-color: limegreen;
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
    <h1> Aristan CRM- Update Client Entry </h1>
    <p id="tagline"> Education Empowerment </p>
    </div>
    
    <%@page import="java.sql.*,java.util.*"%>
<%
    int id=Integer.parseInt(request.getParameter("id"));
     
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        
        String sql="select * from cliententry where CLIENT_ID="+id;
        
        ResultSet rs=st.executeQuery(sql);
        
        while(rs.next())
        {
        %>      


        <form name="f1" method="post" action="Update_Process_ClientEntry.jsp" autocomplete="off">
   <table cellpadding="5" align="center">
       
        <input type="hidden" name="CLIENT_ID" value="<%=rs.getString("CLIENT_ID")%>" class="inputclass"><br>
        
    
     <tr>
      <td>First Name </td>
      <td> <input type="text" name="fname" class="inputclass" value="<%=rs.getString("FIRST_NAME")%>"></td>
    </tr>

    <tr>
      <td> Last Name </td>
      <td> <input type="text" name="lname" class=" inputclass" value="<%=rs.getString("LAST_NAME")%>"></td>
    </tr>

    <tr>
      <td> Profession </td>
      <td> 
          <input type="text" name="profe" class=" inputclass" value="<%=rs.getString("PROFESSION")%>">
      </td>
    </tr>
   
     <tr>
      <td>Nature Bussiness </td>
      <td> <input type="text" name="nbus" class="inputclass" value="<%=rs.getString("NATURE_BUSSINESS")%>"></td>
    </tr>

    <tr>
      <td> Phone No </td>
      <td> <input type="text" name="phoneno" class=" inputclass" value="<%=rs.getString("PHONENO")%>"></td>
    </tr>

    <tr>
      <td> Email </td>
      <td> 
          <input type="text" name="email" class=" inputclass" value="<%=rs.getString("EMAIL")%>">
      </td>
    </tr>
    
    <tr>
      <td> Address </td>
      <td> 
          <input type="text" name="address" class=" inputclass" value="<%=rs.getString("ADDRESS")%>">
      </td>
    </tr>
   
    <tr>
      <td colspan="2" align="center"> 
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