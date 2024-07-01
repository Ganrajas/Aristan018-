<!DOCTYPE html>
<html>
<head>
  <title> www.aristan.com</title>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style type="text/css">
    body{
      background-image: url("back2.jpg");
      background-repeat: no-repeat;
      background-size: cover;
      margin: 0px;
      font-family: bold;
    }
    #brandname{
      background: linear-gradient(to right , deeppink , gold , limegreen , blue , purple);
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
      padding-top: 20px;
      text-shadow: 1px 2px black;
    }
    h1{
      padding-top: 10px;
      margin-top: -10px;
      text-shadow: 2px 3px black;
      font-size: 50px;
    }
    .main{
      background-color: rgba(0,0,0,0.3);
      margin-top: 20px;
      text-align: center;
      color: white;
      width: 100%;
      padding-bottom: 20px;

    }
    .row{
      margin-top: 30px;

    }
    .abc{
      width: 20%;
      border-radius: 3px;
      font-size: 20px;
      background-color:deeppink;
      color: white;
      display: inline-block;
      padding: 12px 2px;
    }
    .abc:hover{
      background-color: #000123;
      cursor: pointer;
    }
    a{
      text-decoration: none;
      color: white;

    }
    a:hover{
      color:white;
      text-decoration: none;
    }
    h2{
        padding-top: 20px;
    }
    #logout{
        
        margin-left: 67%;
        
    }
    
  </style>
</head>
<body>
    <div id="brandname">
    <h1> Aristan CRM </h1>
    
    <p id="tagline"> Education Empowerment </p>
    <p>
        <% String names=(String)session.getAttribute("sessionuser"); 
            out.print("Welcome "+names);
        %>
    </p> 
     
    </div>
 
    <div class="main">
      <h2> Welcome to Owner Dashboard </h2>
      <div class="row">
          <div class="abc"><a href="create_user.html"> Create User </a></div>
        <div class="abc"><a href="DisplayUser.jsp"> Display User - </a>
            <%@page import="java.sql.*"%>
              <%
                  try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        String sql="select count(*) from  user";
        ResultSet rs= st.executeQuery(sql);
        
        String Countrow="";
        while(rs.next())
        {
            Countrow = rs.getString(1);
            out.println(Countrow);
        }
        conn.close();
        }
         catch(Exception e)
         { 
             System.out.println(e);
         }

       %>
        </div>
          
        <div class="abc"><a href="Create_Ticketing_process.jsp"> Ticketing Entry</a></div>
        <div class="abc"><a href="DisplayTicketing.jsp"> Display Ticketing - </a>
            <%@page import="java.sql.*"%>
              <%
                  try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        String sql="select count(*) from  ticket";
        ResultSet rs= st.executeQuery(sql);
        
        String Countrow="";
        while(rs.next())
        {
            Countrow = rs.getString(1);
            out.println(Countrow);
        }
        conn.close();
        }
         catch(Exception e)
         { 
             System.out.println(e);
         }

     %>
        </div>
      </div>

 
      <div class="row">
          <div class="abc"><a href="Registered_Candidate.jsp"> Registered Candidate - </a>
              
        <%@page import="java.sql.*"%>
              <%
                  try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        String sql="select count(*) from  candidate";
        ResultSet rs= st.executeQuery(sql);
        
        String Countrow="";
        while(rs.next())
        {
            Countrow = rs.getString(1);
            out.println(Countrow);
        }
        conn.close();
    }
     catch(Exception e)
     { 
         System.out.println(e);
     }

              %>
          </div>
          <div class="abc"><a href="DisplayVenPayEntry.jsp"> Registered Vendor - </a>
              
           <%@page import="java.sql.*"%>
              <%
                  try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        String sql="select count(*) from  vendor";
        ResultSet rs= st.executeQuery(sql);
        
        String Countrow="";
        while(rs.next())
        {
            Countrow = rs.getString(1);
            out.println(Countrow);
        }
        conn.close();
     }
     catch(Exception e)
     { 
         System.out.println(e);
     }

      %>
           
              
          </div>
      <div class="abc"><a href="DisplayClientEntry.jsp"> Registered Client - </a> 
            
             <%@page import="java.sql.*"%>
              <%
                  try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        String sql="select count(*) from  cliententry";
        ResultSet rs= st.executeQuery(sql);
        
        String Countrow="";
        while(rs.next())
        {
            Countrow = rs.getString(1);
            out.println(Countrow);
        }
        conn.close();
    }
     catch(Exception e)
     { 
         System.out.println(e);
     }

              %>
       
        </div>
              <div class="abc"><a href="DisplayApproval.jsp"> Approval - </a> 
            
             <%@page import="java.sql.*"%>
              <%
                  try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        String sql="select count(*) from  approval";
        ResultSet rs= st.executeQuery(sql);
        
        String Countrow="";
        while(rs.next())
        {
            Countrow = rs.getString(1);
            out.println(Countrow);
        }
        conn.close();
    }
     catch(Exception e)
     { 
         System.out.println(e);
     }

              %>
       
        </div>
      </div>
    
    
     <div class="row">
         <div class="abc"><a href="LedgerBook.jsp">Go to Ledger  DayBook</a></div>
    </div>
    
</div>

</body>
</html>