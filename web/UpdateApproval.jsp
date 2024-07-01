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
          h2{
            padding-top: -25px;
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
              width: 100%;
              border-radius: 20px;
              padding:5px;
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
        
        String sql="select * from approval where APPROVAL_ID="+id;
        
        ResultSet rs=st.executeQuery(sql);
        
        while(rs.next())
        {
        %>      


        <form name="f1" method="post" action="Update_Process_Approval.jsp" autocomplete="off">
   <table cellpadding="5" align="center">
       
        <input type="hidden" name="APPROVAL_ID" value="<%=rs.getString("APPROVAL_ID")%>" class="inputclass"><br>
        
    <tr>
      <th colspan="2">
        <h2> Update Approval Entry</h2>
      </th>
    </tr>
    
     <tr>
      <td>Approval Date</td>
      <td> <input type="date" name="adate" class="inputclass" value="<%=rs.getString("APPROVAL_DATE")%>"></td>
    </tr>

    <tr>
      <td> Approval Details</td>
      <td> <input type="text" name="adetail" class=" inputclass" value="<%=rs.getString("APPROVAL_DETAILS")%>"></td>
    </tr>

    <tr>
      <td> Priority</td>
      <td> 
          <input type="text" name="pry" class=" inputclass" value="<%=rs.getString("PRIORITY")%>">
      </td>
    </tr>
   
    <tr>
      <td colspan="2" align="center"> <input type="submit" value="Update" class="btnclass"></td>
    </tr>
    
    <tr>
      <td colspan="2" align="center"> <input type="reset" value=" Reset" class="btnclass"></td>
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