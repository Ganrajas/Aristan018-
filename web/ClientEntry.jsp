    
<%@page import="java.sql.*" %>

<%
    String fname=request.getParameter("fname");
    
     String lname=request.getParameter("lname");
    
     String profe=request.getParameter("profe");
     
     String nbus=request.getParameter("nbus");
    
     String phoneno=request.getParameter("phoneno");
    
     String email=request.getParameter("email");
     
     String address=request.getParameter("address");
       
     
     try{
         
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        
        String sql="insert into cliententry(FIRST_NAME,LAST_NAME,PROFESSION,NATURE_BUSSINESS,PHONENO,EMAIL,ADDRESS)values('"+fname+"','"+lname+"','"+profe+"','"+nbus+"','"+phoneno+"','"+email+"','"+address+"')";
        int i= st.executeUpdate(sql);
               
       response.sendRedirect("Employee_dashboard.jsp");
        
       %>
<!--       <a href="admin_dashboard.jsp">Go to Dashboard</a> <br>
       <a href="Employee_dashboard.html">Go to Employee Dashboard</a>    -->
     <%          
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
    
    %>