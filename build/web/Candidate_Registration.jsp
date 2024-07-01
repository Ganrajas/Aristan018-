
<%@page import="java.sql.*" %>

<%

    String fname=request.getParameter("fname");
    
    String lname=request.getParameter("lname");
    
    String email=request.getParameter("email");
    
    String dob=request.getParameter("dob");
    
    String phoneno=request.getParameter("phoneno");
    
     String branch=request.getParameter("branch");
     
     String gen=request.getParameter("gen");
     
     String tech=request.getParameter("tech");
     
     int fees=Integer.parseInt(request.getParameter("fees"));
     
     String idate1=request.getParameter("idate1");
     String idate2=request.getParameter("idate2");
     String idate3=request.getParameter("idate3");
     
     
     int iamt1=Integer.parseInt(request.getParameter("iamt1"));
     int iamt2=Integer.parseInt(request.getParameter("iamt2"));
     int iamt3=Integer.parseInt(request.getParameter("iamt3"));
     
     String fstatus1=request.getParameter("feesstatus1");
     String fstatus2=request.getParameter("feesstatus2");
     String fstatus3=request.getParameter("feesstatus3");
     
     
     try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        
        
        String sql="insert into candidate(FIRST_NAME,LAST_NAME,DOB,EMAIL,PHONENO,BRANCH,GENDER,TECHNOLOGY,FEES,IDATE1,IDATE2,IDATE3,IAMT1,IAMT2,IAMT3,feesstatus1,feesstatus2,feesstatus3)"
                + "values"
                + "('"+fname+"','"+lname+"','"+dob+"','"+email+"','"+phoneno+"','"+branch+"','"+gen+"','"+tech+"','"+fees+"','"+idate1+"','"+idate2+"','"+idate3+"','"+iamt1+"','"+iamt2+"','"+iamt3+"','"+fstatus1+"','"+fstatus2+"','"+fstatus3+"')";
        int i= st.executeUpdate(sql);
        
        
       response.sendRedirect("Employee_dashboard.html");
        
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