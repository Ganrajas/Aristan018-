   <html>
        <head>
            <style type="text/css">
    body{     
      margin: 0px;
    }
    #brandname{
      background:linear-gradient(to right,deeppink,gold,limegreen,blue,purple);
      padding:5px;
      color: white;
    }
    #tagline{
      margin-top: -10px;
    }
    h2{
        margin-top: 10px;
    }
    form{
      margin-left: 25%;
      background-color: #91F5F5;
      width: 50%;
      text-align: center;
      margin-top: 20px;
      font-size:20px;
      font-family: Helvetika;
    }
    .inputclass{
      width: 100%;
      border-radius: 2px;
      padding:5px;
      border: none;

    }
    .btnclass{
      width: 40%;
      border-radius: 4px;
      padding:7px;
      border: none;
      background-color: limegreen;
      color: white;
      padding: 5px;
      
    }
    .btnclass:hover{
        background-color: orangered;
        color: white;
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

            String sql="select * from exam where EID="+id;

            ResultSet rs=st.executeQuery(sql);

            while(rs.next())
            {
    %>      
        
    <form method="post" action="Update_Exam_Process.jsp" autocomplete="off">
    <br>
     <h2>Update Exam Details</h2>
    
    <table cellpadding="3" align="center">
        
        <input type="hidden" name="EID" value="<%=rs.getString("EID")%>" class="inputclass"><br>

        <tr>
            <td>Register Id :</td>
            <td><input type="number" name="rid" value="<%=rs.getInt("REGID")%>" class="inputclass"></td>
        </tr>
        
        <tr>
            <td>Exam Date :</td>
            <td><input type="date" name="edate" value="<%=rs.getInt("EXAM_DATE")%>" class="inputclass"></td>
        </tr>

        <tr>
            <td>First Name :</td>
            <td><input type="text" name="fname" value="<%=rs.getString("FIRST_NAME")%>" class="inputclass"></td>
        </tr>

        <tr>
            <td>Last Name :</td>
            <td><input type="text" name="lname" value="<%=rs.getString("LAST_NAME")%>" class="inputclass"></td>
        </tr>

        <tr>
            <td>Course Name :</td>
            <td><input type="text" name="selected_tech" value="<%=rs.getString("COURSE_NAME")%>" class="inputclass"></td>
        </tr>

        <tr>
            <td> HR Round Marks </td>
            <td> <input type="number" name="hr_round" value="<%=rs.getInt("HR_ROUND_MARKS")%>" class=" inputclass" min="0" max="20"></td>
        </tr>

        <tr>
            <td> Technical F2F Marks </td>
            <td> <input type="number" name="technical_f2f" value="<%=rs.getInt("TECH_F2F_MARK")%>" class=" inputclass" min="0" max="30"></td>
        </tr>

        <tr>
            <td> Technical Written Test Mark</td>
            <td> <input type="number" name="technical_wtest" value="<%=rs.getInt("TECH_WTEST_MARK")%>" class=" inputclass" min="0" max="50" onkeyup="result_fun()"></td>
        </tr>

        <tr>
            <td>Obtained Marks</td>
            <td> <input type="number" name="obtained_mark" value="<%=rs.getInt("OBTAIN_MARK")%>" class=" inputclass"></td>
        </tr>

        <tr>
            <td> Result</td>
            <td> <input type="text" name="result" value="<%=rs.getString("RESULT")%>" class=" inputclass"></td>
        </tr>

        <tr>
             <td colspan="2"><input type="submit" value="Update Exam Result" class="btnclass"></td>
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