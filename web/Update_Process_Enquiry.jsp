<%@page import="java.sql.*,java.util.*"%>

<%
    int  id=Integer.parseInt(request.getParameter("eid"));
    String enquiry_date=request.getParameter("enquiry_date");
    String enquiry_time=request.getParameter("enquiry_time");
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String email=request.getParameter("email");
    String phoneno=request.getParameter("phoneno");
    String gender=request.getParameter("gen");
    String reqtime=request.getParameter("reqtime");
    String modular=request.getParameter("modular");
    String intern=request.getParameter("intern");
    String job=request.getParameter("job");
    String tcost=request.getParameter("tcost");
   
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        
        String sql="update enquiry set EID=?,ENQUIRY_DATE=?,ENQUIRY_TIME=?,FIRST_NAME=?,LAST_NAME=?,EMAIL=?,PHONENO=?,GENDER=?,modular=?,intern=?,job=?,STECH=?,TCOST=? where eid="+id;
            
        PreparedStatement ps=conn.prepareStatement(sql);
        ps.setInt(1, id);
        ps.setString(2, enquiry_date);
        ps.setString(3, enquiry_time);
        ps.setString(4, fname);
        ps.setString(5, lname);
        ps.setString(6, email);
        ps.setString(7, phoneno);
        ps.setString(8, gender);
        ps.setString(9, reqtime);
        ps.setString(10, modular);
        ps.setString(11, intern);
        ps.setString(12, job);
        ps.setString(13, tcost);
        
        int i=ps.executeUpdate();
        
        if(i>0)
        {
            response.sendRedirect("DisplayEnquiry.jsp");
        }
        else
        {
            System.out.println("Update Fail.....");
        }
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
    %>