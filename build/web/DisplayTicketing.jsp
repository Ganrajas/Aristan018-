
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
         
          h1{
            padding-top: 10px;
            margin-top: -10px;
            text-shadow: 2px 2px black;
          }
            table{
                border-collapse: collapse;
                border: 2px solid lightgray;
                width: 100%;
            }
            th,td{
                padding: 10px;
                text-align: center;
            }
            tr:hover ,td:hover
            {
                background-color: deeppink;
             td{
                color: black;
            }
            td:hover{
                background-color: black;
                color: white;
            }   color: white;
               
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
            #gotobutton1{
                margin-left: 62%;
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
    </head>
    
    <body>
        <div id="brandname">
         <h1> Aristan CRM - Ticketing Entry Details </h1>
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
   <a href="Employee_dashboard.html">
      <button id="gotobutton" class="btn btn-primary"> <span class="glyphicon glyphicon-home"> </span> Go to Employee Dashboard</button>
   </a> 
   <a href="admin_dashboard.jsp">
       <button id="gotobutton" class="btn btn-primary"> <span class="glyphicon glyphicon-home"> </span> Go to Admin Dashboard</button>
   </a> 
   
    <table border="1" align="center">
        <tr bgcolor="deeppink"> 
            <th>Tid</th>
            <th>Ticketing Date</th>
            <th>Ticketing Time</th>
            <th>Ticketing Details</th>
            <th>Client Name</th>
            <th>Hand Over</th>
            <th>Hand Over By</th>
            <th>Status</th>
            <th colspan="2">Action</th>
        </tr>
<%
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        String sql="select * from ticket order by TID desc";
        ResultSet rs= st.executeQuery(sql);
        int id=1;
        while(rs.next())
        {
            %>
            <tr>
                <td> <%=id%> </td>
                <td> <%=rs.getString("TICKETING_DATE")%> </td>
                <td> <%=rs.getString("TICKETING_TIME")%> </td>
                <td> <%=rs.getString("TICKETING_DETAILS")%> </td>
                <td> <%=rs.getString("CLIENT_NAME")%> </td>
                <td> <%=rs.getString("HAND_OVER")%> </td>
                <td> <%=rs.getString("HANDOVER_BY")%> </td>
                <td bgcolor="limegreen"><marquee>In-Progress</marquee></td>
               
               <td><a href="DeleteTicketing.jsp?id=<%=rs.getString("TID")%>">
                   <span class="glyphicon glyphicon-trash" onclick="return confirm('Do you want  to delete the record ? ')"></span></a></td>
               
               <td><a href="UpdateTicketing.jsp?id=<%=rs.getString("TID")%>">
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
