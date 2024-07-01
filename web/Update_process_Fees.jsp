<%@page import="java.sql.*,java.util.*"%>

<%
    int  id=Integer.parseInt(request.getParameter("cid"));
    
    String fstatus1=request.getParameter("feesstatus1");
    String fstatus2=request.getParameter("feesstatus2");
    String fstatus3=request.getParameter("feesstatus3");
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        
        String sql="update candidate set CID=?,feesstatus1=?,feesstatus2=?,feesstatus3=? where cid="+id;
            
        PreparedStatement ps=conn.prepareStatement(sql);
        ps.setInt(1, id);
        ps.setString(2, fstatus1);
        ps.setString(3, fstatus2);
        ps.setString(4, fstatus3);
        
        int i=ps.executeUpdate();
        
        if(i>0)
        {
            response.sendRedirect("FeesFollowUpAll.jsp");
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