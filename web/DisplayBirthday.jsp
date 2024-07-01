<%@ page import = "java.io.*,java.util.Date" %>
<%@ page import = "javax.servlet.*,java.text.*" %>
<%@page import="java.sql.*" %>
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
            text-shadow: 2px 2px steelblue;
            font-size: 58px;
          }
            
            table{
                border-collapse: collapse;
                border: 2px solid lightgray;
                width: 100%;
                font-size: 12px;
                font-size: 16px;
            }
            th,td{
                padding: 10px;
                text-align: center;
            }
            tr:hover{
                background-color: deeppink;
                color: white;
               
            }
            th{
                color: white;
            }
            td:hover{
              background-color: black;
            }
            #gotobutton{
                margin-top: 30px;
            }
            .logout{
                margin-top: 30px;
                margin-left: 90%;
                border-radius: 4px;
                padding: 5px 22px;
            }
            
           
        </style>
    </head>
    
    <body>
        <div id="brandname">
            <center>
              <h1><img src="b1.gif" width="50" height="50">
                   Birthday Details
                   <img src="b1.gif" width="50" height="50">
              </h1>   
            </center>       
            
        <a href="logoutprocess.jsp" class="logout"> 
            <button class="btn btn-primary" type="button" ><i class="fa fa-sign-out"> LogOut</i></button>                                
        </a>
        </div>
  
     <a href="Employee_dashboard.jsp">
            <button id="gotobutton" class="btn btn-primary"> <span class="glyphicon glyphicon-home"> </span> Go to Employee Dashboard</button>
       </a> 
        
     
  
    <table border="1" align="center">
        <tr bgcolor="deeppink"> 
            <th>Sr.No</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Date Of Birth</th>
            <th>Email</th>
            <th>Phone No</th>
        </tr>
<%
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
     
         Date dNow = new Date();
         SimpleDateFormat ft =new SimpleDateFormat ("MM-dd");
         String x=ft.format(dNow);
         //out.print( "<h2 align=\"center\">" + x + "</h2>");
             
        //String sql="select * from candidate where DATE_FORMAT(dob, '%m-%d')='x'";
        String sql="select * from candidate where dob=curdate()";
                     
       
                                           
        ResultSet rs= st.executeQuery(sql);
        int y=1;
      
        while(rs.next())
        {
            if(rs.getString("DOB").contains(x))
            {
            %>
            <tr>                
                <td> <%=y%> </td>
                <td> <%=rs.getString("FIRST_NAME")%> </td>
                <td> <%=rs.getString("LAST_NAME")%> </td>
                <td> <%=rs.getString("DOB")%> </td>
                <td> <%=rs.getString("EMAIL")%> </td>
                <td> <%=rs.getString("PHONENO")%> </td>               
            </tr>
            <%
            }// end of if
            y++;
        }//end of while loop
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

