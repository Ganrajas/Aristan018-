<!DOCTYPE html>
<html>
<head>
  <title> www.aristan.com</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style type="text/css">
    body{
      background-image: url("back2.jpg");
      background-repeat: no-repeat;
      background-size: cover;
      font-family: bold;
      margin: 0px;
    }
    #brandname{
      background: linear-gradient(to right,deeppink,gold,limegreen,blue,purple);
      padding: 10px;
      color: white;
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
      margin-top: 25px;
      text-align: center;
      color: white;
      width: 100%;
      padding-bottom: 20px; 
      padding-top: 10px;
    }
    h1{
      padding-top: 10px;
      margin-top: -10px;
      text-shadow: 1px 2px black;
    }
    .row{
      margin-top: 15px;

    }
    .abc{
      width: 20%;
      border-radius: 3px; 
      font-size: 20px;
      background-color: #BD08A4;
      color: white;
      display: inline-block;
      padding: 12px 2px;
    }
    .abc:hover{
      background-color: #000123;
      cursor: pointer;
    }
    
    .fsd{
      width: 20%;
      border-radius: 3px; 
      font-size: 20px;
      background-color: #D91ED0;
      color: white;
      display: inline-block;
      padding: 12px 2px;
    }
    .fsd:hover{
      background-color: #000123;
      cursor: pointer;
    }
    
    .intern{
      width: 20%;
      border-radius: 3px; 
      font-size: 20px;
      background-color: #EB47DC;//E53D9F
      color: white;
      display: inline-block;
      padding: 12px 2px;
    }
    .intern:hover{
      background-color: #000123;
      cursor: pointer;
    }
    
    .mod{
      width: 20%;
      border-radius: 3px; 
      font-size: 20px;
      background-color: #E570BD;
      color: white;
      display: inline-block;
      padding: 12px 2px;
    }
    .mod:hover{
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
    <h1> Aristan CRM- Enquiry Management </h1>
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

    <div class="main">
     
      <div class="row">
          <div class="abc"><a href="EnquiryEntry_process.jsp"> Add New Enquiry </a> <br><br></div>
          <div class="abc"><a href="DisplayEnquiry.jsp"> Enquiry Follow Up </a><br><br></div>
          <div class="abc"><a href="DisplaySearchEnquiry.jsp"> Search Enquiry</a><br><br></div>
          <div class="abc"><a href="TrainingDemo_process.jsp"> Training Demo Plan  </a><br><br></div>
      </div>

 
      <div class="row">
          <div class="fsd"><a href="Display_java_FSD.jsp"> Java FSD </a>
              <br><br>
        <%@page import="java.sql.*"%>
              <%
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        
        String sql="select count(*) from  enquiry where job='Java FSD'";
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
          <div class="fsd"><a href="Display_python_FSD.jsp">Python FSD</a>
              <br><br>
           <%@page import="java.sql.*"%>
           
  <%
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        String sql="select count(*) from  enquiry where job='Python FSD'";
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
      <div class="fsd"><a href="Display_PHP_FSD.jsp"> PHP FSD</a> 
            <br><br>
             <%@page import="java.sql.*"%>
              <%
                  try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        String sql="select count(*) from  enquiry where job='PHP FSD'";
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
              <div class="fsd"><a href="Display_Web_FSD.jsp"> Web FSD</a> 
            <br><br> 
             <%@page import="java.sql.*"%>
              <%
                  try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        String sql="select count(*) from  enquiry where job='Web FSD'";
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
          <div class="intern"><a href="Display_java_Internship.jsp"> Java Internship</a>
              <br><br>
        <%@page import="java.sql.*"%>
              <%
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        String sql="select count(*) from  enquiry where intern='Java Internship'";
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
          <div class="intern"><a href="Display_python_Internship.jsp">Python Internship</a>
              <br><br>
           <%@page import="java.sql.*"%>
           
  <%
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        String sql="select count(*) from  enquiry where intern='Python Internship'";
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
      <div class="intern"><a href="Display_PHP_Internship.jsp"> PHP Internship</a> 
            <br><br>
             <%@page import="java.sql.*"%>
              <%
                  try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        String sql="select count(*) from  enquiry where intern='PHP Internship'";
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
              <div class="intern"><a href="Display_Web_Internship.jsp"> Web Internship</a> 
            <br><br> 
             <%@page import="java.sql.*"%>
              <%
                  try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        String sql="select count(*) from  enquiry where intern='Web Internship'";
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
          <div class="mod"><a href="Display_java_Enquiry.jsp"> Core Java Enquiry</a>
              <br><br>
        <%@page import="java.sql.*"%>
              <%
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        String sql="select count(*) from  enquiry where modular='Core Java'";
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
          <div class="mod"><a href="Display_python_Enquiry.jsp">Core Python Enquiry</a>
              <br><br>
           <%@page import="java.sql.*"%>
           
  <%
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        String sql="select count(*) from  enquiry where modular='Python' order by EID";
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
      <div class="mod"><a href="Display_PHP_Enquiry.jsp">Core PHP Enquiry</a> 
            <br><br>
             <%@page import="java.sql.*"%>
              <%
                  try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        String sql="select count(*) from  enquiry where modular='PHP'";
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
              <div class="mod"><a href="Display_C_CPP_Enquiry.jsp">C & C++ Programming</a> 
            <br><br> 
             <%@page import="java.sql.*"%>
              <%
                  try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        String sql="select count(*) from  enquiry where modular in('C Programming','CPP Programming')";
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
              
</div>

</body>
</html>