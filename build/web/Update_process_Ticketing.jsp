<%@page import="java.sql.*,java.util.*"%>

<%
    int  id=Integer.parseInt(request.getParameter("tid"));
    String t_date=request.getParameter("tdate");
    String t_time=request.getParameter("ttime");
    String t_details=request.getParameter("tdetails");
    String c_name=request.getParameter("cname");
    String hover=request.getParameter("hover");
    String hoby=request.getParameter("hoby");
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        
        String sql="update ticket set TID=?,TICKETING_DATE=?,TICKETING_TIME=?,TICKETING_DETAILS=?,CLIENT_NAME=?,HAND_OVER=?,HANDOVER_BY=? where tid="+id;
            
        PreparedStatement ps=conn.prepareStatement(sql);
        ps.setInt(1, id);
        ps.setString(2, t_date);
        ps.setString(3, t_time);
        ps.setString(4, t_details);
        ps.setString(5, c_name);
        ps.setString(6, hover);
        ps.setString(7, hoby);
        
        int i=ps.executeUpdate();
        
        if(i>0)
        {
            response.sendRedirect("DisplayTicketing.jsp");
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