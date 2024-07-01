<%@ page import = "java.io.*,java.util.Date" %>
<%@ page import = "javax.servlet.*,java.text.*" %>
<%@page import="java.sql.*" %>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <style>
            body{
              margin: 0px;
              font-family: bold;
            }
            #brandname{
              background: linear-gradient(to right,deeppink,gold,limegreen,blue,purple);
              padding:20px;
              width: 150%;
              color: white;
              position: sticky;
              top: 0;
              left: 0;
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
            h1{
              padding-top: 10px;
              margin-top: -10px;
              text-shadow: 2px 2px black;
            }
            table{
                border-collapse: collapse;
                border: 2px solid lightgray;
                width: 150%;
                font-size: 12px;
            }
            th,td{
                padding: 5px;
                text-align: center;
                font-size: 14px;
            }
            tr:hover{
                background-color: deeppink;
                color: white;              
            }
            th{
                color: white;
                padding: 10px;
            }
            td{
                color: black;
            }
            td:hover{
                background-color: black;
                color: white;
            }
            #gotobutton{
                margin-top: 20px;
            }
        </style>
    </head>   
    <body>
        <div id="brandname">
         <h1> Aristan CRM - Registered Candidate Fees Details </h1>
         <p id="tagline"> Education Empowerment </p>
        </div>
        
     <a href="Employee_dashboard.jsp">
            <button id="gotobutton" class="btn btn-primary"> <span class="glyphicon glyphicon-home"> </span> Go to Employee Dashboard</button>
       </a> 
     
    <table border="1" align="center">
        <tr bgcolor="deeppink"> 
            <th>Full Name</th>
            <th>Technology</th>
            <th>Email</th>
            <th>PHONE NO</th>
            <th>Installment Date-1</th>
            <th>Installment Date-2</th>
            <th>Installment Date-3</th>
            <th>Inst Amt-1</th>
            <th>Inst Amt-2</th>
            <th>Inst Amt-3</th> 
<!--             <th>FEES STATUS-1</th>
            <th>FEES STATUS-2</th>
            <th>FEES STATUS-3</th>-->
            <th>Check Status</th>
           
        </tr>
<%
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
     

        String sql="select * from candidate";
                                                     
        ResultSet rs= st.executeQuery(sql);
      
        while(rs.next())
        {
            
            %>
            <tr>                
                <td> <%=rs.getString("FIRST_NAME")%> 
                     <%=rs.getString("LAST_NAME")%> 
                </td>
                <td> <%=rs.getString("TECHNOLOGY")%> </td>
                <td> <%=rs.getString("EMAIL")%> </td>
                <td> <%=rs.getString("PHONENO")%> </td>
                <td> <%=rs.getString("IDATE1")%> </td>
                <td> <%=rs.getString("IDATE2")%> </td>
                <td> <%=rs.getString("IDATE3")%> </td>
<!--                <td> <%=rs.getString("IAMT1")%> </td>
                <td> <%=rs.getString("IAMT2")%> </td>
                <td> <%=rs.getString("IAMT3")%> </td>-->
                
                <!--                 code for installment-1-->
                <%
                if(rs.getString("feesstatus1").equals("Paid")  )
                {
                  %>
                  <td bgcolor='limegreen'> &#8377 <%=rs.getString("IAMT1")%> <br><%=rs.getString("feesstatus1")%> </td>
               <%    
                }
                else
                {
                %>
                  <td bgcolor='gold'> &#8377 <%=rs.getString("IAMT1")%><br> <%=rs.getString("feesstatus1")%> </td> 
                <%    
                }
                %>
                
<!--                 code for installment-2-->
                <%
                if(rs.getString("feesstatus2").equals("Paid")  )
                {
                  %>
                  <td bgcolor='limegreen'> &#8377 <%=rs.getString("IAMT2")%><br> <%=rs.getString("feesstatus2")%> </td>
               <%    
                }
                else
                {
                %>
                  <td bgcolor='gold'> &#8377 <%=rs.getString("IAMT2")%><br> <%=rs.getString("feesstatus2")%> </td> 
                <%    
                }
                %>
                
               
<!--                 code for installment-3-->
                <%
                if(rs.getString("feesstatus3").equals("Paid")  )
                {
                  %>
                  <td bgcolor='limegreen'> &#8377 <%=rs.getString("IAMT3")%><br> <%=rs.getString("feesstatus3")%> </td>
               <%    
                }
                else
                {
                %>
                    <td bgcolor='gold'> &#8377 <%=rs.getString("IAMT3")%><br> <%=rs.getString("feesstatus3")%> </td> 
                <%    
                }
                %> 
                
                <td><a href="UpdateFees.jsp?id=<%=rs.getString("CID")%>">
                        <span class="glyphicon glyphicon-pencil"></span></a></td>
                           
            </tr>
            <%
            
        }
        conn.close();
    }
     catch(Exception e)
     { 
         System.out.println(e);
     }
    %>
    
    </table>
    </body>
</html>

