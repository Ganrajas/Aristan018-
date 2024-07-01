    
<%@page import="java.sql.*" %>

<%
     String comp_name=request.getParameter("comp_name");
    
     String comp_url=request.getParameter("comp_url");
     
     String fname=request.getParameter("fname");
    
     String lname=request.getParameter("lname");
    
     String contactno=request.getParameter("contactno");
     
     String email=request.getParameter("email");
    
     String tech_require=request.getParameter("tech_require");
     
     String require_time=request.getParameter("require_time");// status
     
     String select_date=request.getParameter("select_date");
     
     if(select_date.isEmpty())
     {
         select_date="";
     }
     
     
     String remark=request.getParameter("remark");
     
     String address=request.getParameter("address");
       
     
     try{
         
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();

        String sql="insert into placement(COMPANY_NAME,COMPANY_URL,FIRST_NAME,LAST_NAME,CONTACT_NO,EMAIL_ID,TECH_REQUIREMENT,REQUIRE_STATUS,SHOW_DATE,REMARK,ADDRESS)values('"+comp_name+"','"+comp_url+"','"+fname+"','"+lname+"','"+contactno+"','"+email+"','"+tech_require+"','"+require_time+"','"+select_date+"','"+remark+"','"+address+"')";
        int i= st.executeUpdate(sql);
        
        
        response.sendRedirect("Placement_management.jsp");
        
       %>
      
     <%          
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
    
    %>