    
<%@page import="java.sql.*" %>

<%
    String enquiry_date=request.getParameter("enquiry_date");
    String enquiry_time=request.getParameter("enquiry_time");
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String email=request.getParameter("email");
    String phoneno=request.getParameter("phoneno");
    String gender=request.getParameter("gen");
    String reqtime=request.getParameter("reqtime");
    String toc=request.getParameter("toc");
    String modular=request.getParameter("m_tech");
    String intern=request.getParameter("itech");
    String job=request.getParameter("jtech");
    String tcost=request.getParameter("tcost");
   
       
     
     try{
         
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();

        String sql="insert into enquiry(ENQUIRY_DATE,ENQUIRY_TIME,FIRST_NAME,LAST_NAME,EMAIL,PHONENO,GENDER,RTIME,COURSE,modular,intern,job,TCOST)values('"+enquiry_date+"','"+enquiry_time+"','"+fname+"','"+lname+"','"+email+"','"+phoneno+"','"+gender+"','"+reqtime+"','"+toc+"','"+modular+"','"+intern+"','"+job+"','"+tcost+"')";
        int i= st.executeUpdate(sql);
        
        
        response.sendRedirect("Enquiry_management.jsp");
        
       %>
      
     <%          
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
    
    %>