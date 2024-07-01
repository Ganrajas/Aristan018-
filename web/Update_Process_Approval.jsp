<%@page import="java.sql.*,java.util.*"%>

<%
    int  id=Integer.parseInt(request.getParameter("APPROVAL_ID"));
    String adate=request.getParameter("adate");
    String adetail=request.getParameter("adetail");
    String pry=request.getParameter("pry");
    
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        
        String sql="update approval set APPROVAL_ID=?,APPROVAL_DATE=?,APPROVAL_DETAILS=?,PRIORITY=? where APPROVAL_ID="+id;
            
        PreparedStatement ps=conn.prepareStatement(sql);
        ps.setInt(1, id);
        ps.setString(2, adate);
        ps.setString(3, adetail);
        ps.setString(4, pry);
        
        int i=ps.executeUpdate();
        
        if(i>0)
        {
            response.sendRedirect("DisplayApproval.jsp");
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