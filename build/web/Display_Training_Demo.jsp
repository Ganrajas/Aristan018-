
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
            font-family: bold;
            margin: 0px;
          }
          #brandname{
            background:linear-gradient(to right,deeppink,gold,limegreen,blue,purple);
            padding: 10px;
            color: white;
            width: 100%;
            position: Sticky;
            top: 0;
            left: 0;
            box-shadow: 0px 5px 15px rgba(0,0,0,0.8);
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
            text-shadow: 1px 1px black;
            color: red;
            font-size: 33px;
          }
          h1{
            padding-top: 10px;
            margin-top: -10px;
            text-shadow: 1px 2px black;
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
            <h1> Aristan CRM - Web FSD Entry Details </h1>
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
        
    <a href="Enquiry_management.jsp">
            <button id="gotobutton" class="btn btn-primary"> <span class="glyphicon glyphicon-home"> </span> Go to Employee Dashboard</button>
       </a> 
    
    <a href="TrainingDemo.html">
        <button class="btn btn-primary" id="gotobutton"> <span class="glyphicon glyphicon-plus"></span> Add Demo Batch </button>
    </a>    
    
        
    
  
    <table border="1" align="center">
        <tr bgcolor="deeppink">
            <th> SR NO </th>
            <th>Demo Id</th>
            <th>Demo Date</th>
            <th>Candidate name</th>
            <th>Technology</th>
            <th>Demo Time</th>
            <th>Schedule By</th>
            <th>Trainer Name</th>
            <th colspan="2">Action</th>
        </tr>
<%
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        String sql="select * from demo_training order by demo_id desc";
        ResultSet rs= st.executeQuery(sql);
        int x=1;
        while(rs.next())
        {
  %>
            <tr>
                <td> <%=x%> </td>
                <td> <%=rs.getString("DEMO_ID")%> </td>
                <td> <%=rs.getString("DEMO_DATE")%> </td>
                <td> <%=rs.getString("CANDIDATE_NAME")%> </td>
                <td> <%=rs.getString("TECHNOLOGY")%> </td>
               <td> <%=rs.getString("DEMO_TIME")%> </td>
               <td> <%=rs.getString("SCHEDULE_BY")%> </td>
                <td> <%=rs.getString("TRAINER_NAME")%> </td>
              
               
               <td><a href="DeleteDemoTraining.jsp?id=<%=rs.getString("DEMO_ID")%>">
                   <span class="glyphicon glyphicon-trash" onclick="return confirm('Do you want  to delete the record ? ')"></span></a></td>
               
               <td><a href="UpdateDemoTraining.jsp?id=<%=rs.getString("DEMO_ID")%>">
                   <span class="glyphicon glyphicon-pencil"></span></a></td>
               
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
