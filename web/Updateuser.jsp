   <html>
        <head>
            <style type="text/css">
    body{
      background-image: url("back2.jpg");
      background-repeat: no-repeat;
      background-size: cover;
      margin: 0px;
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
      color: black;
      text-shadow: 1px 1px white;
    }
    h1{
      padding-top: 10px;
      margin-top: -10px;
      text-shadow: 2px 3px black;
    }
    form{
      margin-left: 30%;
      background-color: #91F5F5;
      width: 40%;
      text-align: center;
      margin-top: 30px; 
    }
    .inputclass{
      width: 100%;
      border-radius: 2px;
      padding:5px;
      border: none;

    }
    .btnclass{
      width: 100%;
      border-radius: 4px;
      padding:5px;
      border: none;
      background-color: #000123;
      color: white;
      padding: 5px;
      
    }
    .btnclass:hover{
        background-color: skyblue;
        color: black;
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

            String sql="select * from user where userid="+id;

            ResultSet rs=st.executeQuery(sql);

            while(rs.next())
            {
    %>      
        
    <form method="post" action="Update_Process.jsp" autocomplete="off">
                <table cellpadding="7" align="center">
                <h2>Update User Details</h2>
                               
                <input type="hidden" name="userid" value="<%=rs.getString("userid")%>" class="inputclass"><br>
                
                <tr>
                    <td>First Name :</td>
                    <td><input type="text" name="fname" value="<%=rs.getString("first_name")%>" class="inputclass"></td>
                </tr>
                
                <tr>
                    <td>Last Name :</td>
                    <td><input type="text" name="lname" value="<%=rs.getString("last_name")%>" class="inputclass"></td>
                </tr>
                
                <tr>
                    <td>User Name :</td>
                    <td><input type="text" name="uname" value="<%=rs.getString("username")%>" class="inputclass"></td>
                </tr>
                
                <tr>
                    <td>Password :</td>
                    <td><input type="text" name="pass" value="<%=rs.getString("password")%>" class="inputclass"></td>
                </tr>
                
                <tr>
                    <td>Email :</td>
                    <td><input type="text" name="email" value="<%=rs.getString("email")%>" class="inputclass"></td>
                </tr>
                
                <tr>
                    <td colspan="2"><input type="submit" value="Update User" class="btnclass"></td>
                </tr>
        
    <%
        }//end of while loop
            
        }//end of try block
        catch(Exception e)
        {
            System.out.println(e);
        }
    %>
    
    </table>
    </form>
    </body>
    </html>