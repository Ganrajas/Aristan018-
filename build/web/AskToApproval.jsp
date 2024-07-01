    
<%@page import="java.sql.*" %>

<%
    String adate=request.getParameter("adate");
    
     String adetail=request.getParameter("adetail");
    
     String pry=request.getParameter("pry");
     
       
     
     try{
         
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        
    
        String sql="insert into approval(APPROVAL_DATE,APPROVAL_DETAILS,PRIORITY)values('"+adate+"','"+adetail+"','"+pry+"')";
        int i= st.executeUpdate(sql);
        
        
        out.println(" Approval Done Successfully.....!");
        
       %>
       <a href="admin_dashboard.jsp">Go to Dashboard</a> <br>
       <a href="Employee_dashboard.html">Go to Employee Dashboard</a>    
     <%          
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
    
    %>