<%@page import="java.sql.*,java.util.*"%>

<%
    int  id=Integer.parseInt(request.getParameter("CLIENT_ID"));
     String comp_name=request.getParameter("comp_name");   
     String comp_url=request.getParameter("comp_url");    
     String fname=request.getParameter("fname");    
     String lname=request.getParameter("lname");   
     String contactno=request.getParameter("contactno");    
     String email=request.getParameter("email");    
     String tech_require=request.getParameter("tech_require");    
     String require_time=request.getParameter("require_time");     
     String select_date=request.getParameter("select_date"); 
     String remark=request.getParameter("remark");     
     String address=request.getParameter("address"); 
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        
        String sql="update placement set CLIENT_ID=?,COMPANY_NAME=?,COMPANY_URL=?,FIRST_NAME=?,LAST_NAME=?,CONTACT_NO=?,EMAIL_ID=?,"
                + "TECH_REQUIREMENT=?,REQUIRE_STATUS=?,SHOW_DATE=?,REMARK=?,ADDRESS=? where CLIENT_ID="+id;
            
        PreparedStatement ps=conn.prepareStatement(sql);
        ps.setInt(1, id);
        ps.setString(2, comp_name);
        ps.setString(3, comp_url);
        ps.setString(4, fname);
        ps.setString(5, lname);
        ps.setString(6, contactno);
        ps.setString(7, email);
        ps.setString(8, tech_require);
        ps.setString(9, require_time);
        ps.setString(10, select_date);
        ps.setString(11, remark);
        ps.setString(12, address);
       
        int i=ps.executeUpdate();
        
        if(i>0)
        {
            response.sendRedirect("Display_Placement_Client.jsp");    
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