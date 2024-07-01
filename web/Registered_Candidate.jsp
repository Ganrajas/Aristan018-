
<%@page import="java.sql.*"%>

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
            table{
                border-collapse: collapse;
                border: 2px solid lightgray;
                width: 150%;
                font-size: 14px;
            }
            th,td{
                padding: 10px;
                text-align: center;
            }
            tr:hover ,td:hover{
                background-color: deeppink;
                color: white;
            }
            th{
                color: white;
            }
            td{
                color: black;
            }
            td:hover{
                background-color: black;
                color: white;
            }
            #gotobutton{
                margin-top: 30px;
            }
            
        </style>
    </head>
    
    <body>
        <div id="brandname">
         <h1> Aristan CRM - Registered Candidate Details </h1>
         <p id="tagline"> Education Empowerment </p>
        </div>
     <a href="Employee_dashboard.jsp">
            <button id="gotobutton" class="btn btn-primary"> <span class="glyphicon glyphicon-home"> </span> Go to Employee Dashboard</button>
       </a> 
        <a href="admin_dashboard.jsp">
            <button id="gotobutton" class="btn btn-primary"> <span class="glyphicon glyphicon-home"> </span> Go to Admin Dashboard</button>
       </a> 
   
    <table border="1" align="center">
        <tr bgcolor="deeppink"> 
            <th>Candidate Id</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Date Of Birth</th>
            <th>Email</th>
            <th>Phone No</th>
            <th>Branch</th>
            <th>Gender</th>
            <th>Technology</th>
            <th>Fees</th>
            <th>Idate-1</th>
            <th>Idate-2</th>
            <th>Idate-3</th>
            <th>Iamt-1</th>
            <th>Iamt-2</th>
            <th>Iamt-3</th>
            <th>Fees Status-1</th>
            <th>Fees Status-2</th>
            <th>Fees Status-3</th>
            <th colspan="2">Action</th>
            
            
        </tr>
<%
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        String sql="select * from candidate order by CID desc";
        ResultSet rs= st.executeQuery(sql);
        int x=101;
        while(rs.next())
        {
            %>
            <tr>
                <td> <%=x%> </td>
                <td> <%=rs.getString("FIRST_NAME")%> </td>
                <td> <%=rs.getString("LAST_NAME")%> </td>
                <td> <%=rs.getString("DOB")%> </td>
                <td> <%=rs.getString("EMAIL")%> </td>
                <td> <%=rs.getString("PHONENO")%> </td>
                <td> <%=rs.getString("BRANCH")%> </td>
                <td> <%=rs.getString("GENDER")%> </td>
                <td> <%=rs.getString("TECHNOLOGY")%> </td>
                <td> <%=rs.getString("FEES")%> </td>
                <td> <%=rs.getString("IDATE1")%> </td>
                <td> <%=rs.getString("IDATE2")%> </td>
                <td> <%=rs.getString("IDATE3")%> </td>
                <td>&#8377; <%=rs.getString("IAMT1")%> </td>
                <td>&#8377; <%=rs.getString("IAMT2")%> </td>
                <td>&#8377; <%=rs.getString("IAMT3")%> </td>
                <td> <%=rs.getString("feesstatus1")%> </td>
                <td> <%=rs.getString("feesstatus2")%> </td>
                <td> <%=rs.getString("feesstatus3")%> </td>
               
                <td><a href="DeleteCandidate.jsp?id=<%=rs.getString("CID")%>">
                        <span class="glyphicon glyphicon-trash" onclick="return confirm('Do you want  to delete the record ? ')"></span></a></td>
               
               <td><a href="UpdateCandidate.jsp?id=<%=rs.getString("CID")%>">
                       <span class="glyphicon glyphicon-pencil"></span> </a></td>
                
            </tr>
            <%
            x++;
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
