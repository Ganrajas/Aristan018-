
<%@page import="java.sql.*"%>

<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
        <style>
          body{
            background-image: url("back2.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            margin: 0px;
            font-family: bold;
          }
          #brandname{
            background: linear-gradient(to right,deeppink,gold,limegreen,blue,purple);
            padding:20px;
            color: white;
            width: 100%;
            box-shadow: 0px 5px 15px rgba(0,0,0,0.8);
            position: sticky;
            top: 0;
            left: 0;
          }
          #tagline{
            margin-top: -30px;
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
            padding-top: 20px;
            text-shadow: 1px 2px steelblue;
            color: black;
          }
          h1{
            padding-top: 10px;
            margin-top: -10px;
            text-shadow: 2px 3px black;
          }
            table{
                border-collapse: collapse;
                border: 2px solid lightgray;
                width: 100%;
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
                margin-top: 20px;
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
    </head>
    
    <body>
        <div id="brandname">
         <h1> Aristan CRM </h1>
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
    <a href="Employee_dashboard.jsp">
            <button id="gotobutton" class="btn btn-primary"> <span class="glyphicon glyphicon-home"> </span> Go to Employee Dashboard</button>
       </a> 
  
    <table border="1" align="center">
        <tr bgcolor="deeppink"> 
            <th>Vendor Payment ID</th>
            <th>Vendor Paying Date</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Vendor Company</th>
            <th>Amount</th>
            <th>Pay By</th>
            
            <th colspan="2">ACTION</th>
            
            
        </tr>
<%
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        String sql="select * from  vendor order by VPID desc";
        ResultSet rs= st.executeQuery(sql);
        int id=1;
        while(rs.next())
        {
            %>
            <tr>
                <td> <%=id%> </td>
                <td> <%=rs.getString("VPDATE")%> </td>
                <td> <%=rs.getString("FIRST_NAME")%> </td>
                <td> <%=rs.getString("LAST_NAME")%> </td>
                <td> <%=rs.getString("VCOMP")%> </td>
                <td>&#8377; <%=rs.getString("AMOUNT")%> </td>
                <td> <%=rs.getString("PAYBY")%> </td>
               
                
                <td><a href="DeleteVendorPayment.jsp?id=<%=rs.getString("VPID")%>">
                        <span class="glyphicon glyphicon-trash" onclick="return confirm('Do you want  to delete the record ? ')"></span></a></td>
               
               <td><a href="UpdateVendorPayment.jsp?id=<%=rs.getString("VPID")%>">
                   <span class="glyphicon glyphicon-pencil"></span></a></td>
                
            </tr>
            <%
            id++;
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
