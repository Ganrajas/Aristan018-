<%@page import="java.sql.*,java.util.*"%>

<%
    int  id=Integer.parseInt(request.getParameter("VPID"));
    String vdate=request.getParameter("vdate");
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String vcomp=request.getParameter("vcomp");
    String amt=request.getParameter("amt");
    String pby=request.getParameter("pby");
   
       
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        
        String sql="update vendor set VPID=?,VPDATE=?,FIRST_NAME=?,LAST_NAME=?,VCOMP=?,AMOUNT=?,PAYBY=? where VPID="+id;
            
        PreparedStatement ps=conn.prepareStatement(sql);
        ps.setInt(1, id);
        ps.setString(2, vdate);
        ps.setString(3, fname);
        ps.setString(4, lname);
        ps.setString(5, vcomp);
        ps.setString(6, amt);
        ps.setString(7, pby);
       
        int i=ps.executeUpdate();
        
        if(i>0)
        {
            response.sendRedirect("DisplayVenPayEntry.jsp");
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