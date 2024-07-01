
<%@page import="java.sql.*"%>

<html>
    <head>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <style>
            table{
                border-collapse: collapse;
                border: 2px solid lightgray;
                width: 120%;
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
            
        </style>
    </head>
    
    <body>
    <center>
        <h2> WEB Internship Entry Details </h2>
        
       <a href="Enquiry_management.jsp">Go to Enquiry Management</a>    
        
    </center>
  
    <table border="1" align="center">
        <tr bgcolor="deeppink"> 
            <th>Enquiry Id</th>
            <th>First name</th>
            <th>Last name</th>
            <th>Email</th>
            <th>Phone No</th>
            <th>Gender</th>
            <th>Required Time</th>
            <th>Modular</th>
            <th>Internship</th>
            <th>Job Oriented</th>
            <th>Training Cost</th>
            <th colspan="2">Action</th>
        </tr>
<%
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        String sql="select * from enquiry where intern='Web Internship' order by EID desc";
        ResultSet rs= st.executeQuery(sql);
        int x=1;
        while(rs.next())
        {
  %>
            <tr>
                <td> <%=x%> </td>
                <td> <%=rs.getString("FIRST_NAME")%> </td>
                <td> <%=rs.getString("LAST_NAME")%> </td>
                <td> <%=rs.getString("EMAIL")%> </td>
                <td> <%=rs.getString("PHONENO")%> </td>
               <td> <%=rs.getString("GENDER")%> </td>
               <td> <%=rs.getString("RTIME")%> </td>
               <td> <%=rs.getString("modular")%> </td>
               <td> <%=rs.getString("intern")%> </td>
               <td> <%=rs.getString("job")%> </td>
               <td> <%=rs.getString("TCOST")%> </td>
               
               <td><a href="DeleteEnquiry.jsp?id=<%=rs.getString("eid")%>">
                   <span class="glyphicon glyphicon-trash" onclick="return confirm('Do you want  to delete the record ? ')"></span></a></td>
               
               <td><a href="UpdateEnquiry.jsp?id=<%=rs.getString("eid")%>">
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
