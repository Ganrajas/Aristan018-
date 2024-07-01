<%@page import="java.sql.*"%>

<html>
<body>
    <style>
        body{
              font-family: Arial;
              
        }
        table{
                border-collapse: collapse;
                border: 2px solid lightgray;
                width: 90%;
            }
            th,td{
                padding: 10px;
                text-align: center;
            }
           
            th{
                color: white;
            }
    </style>

    <center>
        <h1> Score Card Record </h1>
        <a href="Employee_dashboard.jsp" align="center"> Go To Employee Dashboard</a>
        <br><br>
    </center>
   
    <table border="1" align="center">
        <tr bgcolor="deeppink">
            
          
            <th colspan="2">REGISTER ID</th>
            
            <th colspan="5">Full name</th>
           
        </tr>
        
       
<%
      int reg_id=Integer.parseInt(request.getParameter("rid"));
      
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db", "root", "");

        Statement st=conn.createStatement();

       String sql ="select * from exam where  REGID="+reg_id+" group by REGID";
        ResultSet rs = st.executeQuery(sql);
        

        while(rs.next())
        {
        %>
        <tr>
             
            <td colspan="2"> <%=rs.getString("REGID")%> </td>
            <td colspan="5"> 
                <%=rs.getString("FIRST_NAME")%> 
                <%=rs.getString("LAST_NAME")%> 
            </td>
           
        </tr>
    <%
       
        }
        conn.close();
        }
         catch (Exception e)
         {
            System.out.println(e);
         }
    %>
     <tr bgcolor="#000123">
             <th>SR</th>
             <th>Exam Date</th>
            <th>Technology</th>
            <th>HR-20 </th>
            <th>F2F Tech-30 </th>
            <th>Tech Test-50</th>
            <th> Out of Mark-100 </th>
          
        </tr>
        
        <%
      int reg_id1=Integer.parseInt(request.getParameter("rid"));
      
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db", "root", "");

        Statement st=conn.createStatement();

       String sql ="select * from exam  where  REGID="+reg_id1+"";
        ResultSet rs = st.executeQuery(sql);
        
        int x=1;
        while(rs.next())
        {
        %>
        <tr>
            
             <td> <%=x%> </td>
             <td> <%=rs.getString("EXAM_DATE")%>  </td>
            <td> <%=rs.getString("COURSE_NAME")%> </td>
            <td> <%=rs.getString("HR_ROUND_MARKS")%> </td>
            <td> <%=rs.getString("TECH_F2F_MARK")%> </td>
            <td> <%=rs.getString("TECH_WTEST_MARK")%> </td>
             <td> <%=rs.getString("OBTAIN_MARK")%> </td>
              
        </tr>
        
       
    <%
        x++;
        }
        conn.close();
        }
         catch (Exception e)
         {
            System.out.println(e);
         }
    %>
    
    
     <%
      int reg_id2=Integer.parseInt(request.getParameter("rid"));
      
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db", "root", "");

        Statement st=conn.createStatement();

       String sql ="select * from exam  where  REGID="+reg_id2+"";
        ResultSet rs = st.executeQuery(sql);
        
        int tot_mark=0;
        while(rs.next())
        {
        %>
         <%tot_mark=tot_mark+Integer.parseInt(rs.getString("OBTAIN_MARK"));%>
       
        
       
    <%
      
        }
        %>
        <tr>
            <td colspan="6" >Total mark-500 </td>
            <td><%=tot_mark %></td>
        </tr>
       <%
 
        conn.close();
        }
         catch (Exception e)
         {
            System.out.println(e);
         }
    %>
    
    

    </table>
   </body>
 </html>

