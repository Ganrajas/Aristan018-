<!DOCTYPE html>
<html>
<head>
  <title> www.aristan.com</title>
  <style type="text/css">
    body{
      background-image: url("back2.jpg");
      background-repeat: no-repeat;
      background-size: cover;
      margin: 0px;
    }
    #brandname{
      background:linear-gradient(to right,deeppink,gold,limegreen,blue,purple);
      padding:20px;
      color: white;
      box-shadow: 0px 5px 15px rgba(0,0,0,0.8);
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
      text-shadow: 1px 1px white;
      margin-top: -10px;
    }
    h1{
      padding-top: 10px;
      margin-top: -10px;
      text-shadow: 2px 3px black;
    }
    form{
      margin-left: 10%;
      background-color: #91F5F5;
      width: 80%;
      font-family: Arial;
      text-align: center;
      margin-top: 20px; 
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


        <form name="f1" method="post" action="Update_process_Fees.jsp" autocomplete="off">
   <table cellpadding="7" align="center">
       
        <input type="hidden" name="cid" value="<%=rs.getString("cid")%>" class="inputclass"><br>
        
    <tr>
      <th colspan="6">
        <h2> Update Fees of Registered Candidate</h2>
      </th>
    </tr>
    
    <tr>
      <td>Full Name</td>
      <td> <input type="text" name="fname" class=" inputclass" value="<%=rs.getString("FIRST_NAME")%> <%=rs.getString("LAST_NAME")%>" readonly></td>
   
     
    
      <td>Technology</td>
      <td> <input type="text" name="tech" class=" inputclass" value="<%=rs.getString("TECHNOLOGY")%>" readonly></td>
      
      <td> Fees</td>
      <td> <input type="text" name="fees" class=" inputclass" value="<%=rs.getString("FEES")%>" readonly></td>
    </tr>
   </table>
    
    <table cellpadding="9" align="center" border="1" width="85%">
        <tr>
            <th colspan="4">Installment Details</th>
        </tr>
    <tr>
        <th>No of Installment</th>
        <th>Installment Date</th>
        <th>Installment Amount</th>
        <th>Installment Status</th>
    </tr>
    
    <tr>
        <td>Installment-1</td>
        <td><input type="text" name="idate1" class="inputclass" value="<%=rs.getString("IDATE1")%>" readonly></td>
        <td><input type="text" name="iamt1" class="inputclass" value="<%=rs.getString("IAMT1")%>"readonly></td>    
        <td>
            <select name="feesstatus1" class="inputclass">
                <option <%=rs.getString("feesstatus1").equals("Paid")?"Selected":""%>> Paid</option>
                <option <%=rs.getString("feesstatus1").equals("Unpaid")?"Selected":""%>>Unpaid</option>
            </select>
        </td>
    </tr>
    
    <tr>
        <td>Installment-2</td>
        <td><input type="text" name="idate2" class=" inputclass" value="<%=rs.getString("IDATE2")%>" readonly></td>
        <td><input type="text" name="iamt2" class=" inputclass" value="<%=rs.getString("IAMT2")%>"readonly></td>        
        <td>
            <select name="feesstatus2" class="inputclass">
                <option <%=rs.getString("feesstatus2").equals("Paid")?"Selected":""%>>Paid</option>
                <option <%=rs.getString("feesstatus2").equals("Unpaid")?"Selected":""%>>Unpaid</option>
            </select>
        </td>

    </tr>
    
    <tr>
        <td>Installment-3</td>
        <td><input type="text" name="idate3" class=" inputclass" value="<%=rs.getString("IDATE3")%>" readonly></td>
        <td><input type="text" name="iamt3" class=" inputclass" value="<%=rs.getString("IAMT3")%>"readonly></td>
        <td>
            <select name="feesstatus3" class="inputclass">
                <option <%=rs.getString("feesstatus3").equals("Paid")?"Selected":""%>>Paid</option>
                <option <%=rs.getString("feesstatus3").equals("Unpaid")?"Selected":""%>>Unpaid</option>
            </select>
        </td>

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