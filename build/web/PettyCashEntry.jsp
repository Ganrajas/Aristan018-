    
<%@page import="java.sql.*" %>

<%
    String pdate=request.getParameter("pdate");
    
     String pdetail=request.getParameter("pdetail");
    
     String pqty=request.getParameter("pqty");
     
     String prate=request.getParameter("prate");
    
     String bamt=request.getParameter("bamt");
    
     String pby=request.getParameter("pby");
     
     String aby=request.getParameter("aby");
       
     
     try{
         
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        

        String sql="insert into pettycash(PURCHASE_DATE,PURCHASE_DETAIL,PURCHASE_QTY,PURCHASE_RATE,BILL_AMT,PURCHASE_BY,APPROVAL_BY)values('"+pdate+"','"+pdetail+"','"+pqty+"','"+prate+"','"+bamt+"','"+pby+"','"+aby+"')";
        int i= st.executeUpdate(sql);
        
        
        out.println(" Petty Cash  Entry Done Successfully.....!");
        
       %>
       <a href="admin_dashboard.jsp">Go to Admin Dashboard</a> <br>
       <a href="Employee_dashboard.html">Go to Employee Dashboard</a>    
     <%          
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
    
    %>