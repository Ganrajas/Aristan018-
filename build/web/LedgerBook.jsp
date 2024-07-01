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
      padding:5px;
      color: white; 
    }
    #tagline{
      margin-top: -20px;
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
      font-size: 17px;
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
    }
    h2{
        padding-top: 20px;
    }
    
  </style>
</head>
<body>
    <div id="brandname">
    <h1> Aristan CRM </h1>
    <p id="tagline"> Education Empowerment </p>
    </div>

    <div class="main">
      <h2> Welcome to Ledger Day Book Dashboard </h2>
      
 
      <div class="row">
          <div class="abc"> Receipt Details
              <br><br>
              &#8377;
             <%@page import="java.sql.*"%>
              <%
              try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        String sql="select sum(fees) from  candidate";
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
        <div class="abc"> Employee Payment
            <br><br>
            &#8377;
            <%@page import="java.sql.*"%>
              <%
              try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        String sql="select sum(amount) from  emppayentry";
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
        <div class="abc"> Vendor Payment 
            <br><br>
            &#8377;
            <%@page import="java.sql.*"%>
              <%
              try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        String sql="select sum(amount) from  vendor";
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
        <div class="abc"> Petty Cash 
            <br><br>
            &#8377;
            <%@page import="java.sql.*"%>
              <%
              try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        String sql="select sum(bill_amt) from  pettycash";
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
        <div class="abc"><a href="Dev_book.html">Income</a>
            <br><br>
            &#8377;
              <%@page import="java.sql.*"%>
              <%
              try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");

                Statement st1=conn.createStatement();
                Statement st2=conn.createStatement();
                Statement st3=conn.createStatement();
                Statement st4=conn.createStatement();
                
                String sql1="select sum(fees) from  candidate";
                String sql2="select sum(amount) from  vendor";
                String sql3="select sum(amount) from  emppayentry";
                String sql4="select sum(bill_amt) from  pettycash";

                ResultSet rs1= st1.executeQuery(sql1);
                ResultSet rs2= st2.executeQuery(sql2);
                ResultSet rs3= st3.executeQuery(sql3);
                ResultSet rs4= st4.executeQuery(sql4);

                int fees=0;
                int amount=0;
                int amount1=0;
                int bill_amt=0;

                while(rs1.next())
                {
                    fees =Integer.parseInt(rs1.getString(1));
                }
                while(rs2.next())
                {
                    amount =Integer.parseInt(rs2.getString(1));
                }
                while(rs3.next())
                {
                    amount1 =Integer.parseInt(rs3.getString(1));
                }
                while(rs4.next())
                {
                    bill_amt =Integer.parseInt(rs4.getString(1));
                }
                
                int income=fees-(amount+amount1+bill_amt);
                
                out.println(income);
                
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