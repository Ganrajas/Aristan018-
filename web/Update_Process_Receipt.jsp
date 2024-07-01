<%@page import="java.sql.*,java.util.*"%>

<%
    int  id=Integer.parseInt(request.getParameter("rid"));
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String amount=request.getParameter("amt");
    String payby=request.getParameter("pay");
    String pdate=request.getParameter("pdate");
   
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        
        String sql="update receipt set RID=?,FIRST_NAME=?,LAST_NAME=?,AMOUNT=?,PAYBY=?,PDATE=? where rid="+id;
            
        PreparedStatement ps=conn.prepareStatement(sql);
        ps.setInt(1, id);
        ps.setString(2, fname);
        ps.setString(3, lname);
        ps.setString(4, amount);
        ps.setString(5, payby);
        ps.setString(6, pdate);
        
        int i=ps.executeUpdate();
        
        if(i>0)
        {
            response.sendRedirect("DisplayReceiptEntry.jsp");
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