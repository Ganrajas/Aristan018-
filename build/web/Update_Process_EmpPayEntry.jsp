<%@page import="java.sql.*,java.util.*"%>

<%
    int  id=Integer.parseInt(request.getParameter("PAYID"));
    String pdate=request.getParameter("pdate");
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String job=request.getParameter("job");
    String amt=request.getParameter("amt");
    String pby=request.getParameter("pby");
       
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        
        String sql="update emppayentry set PAYID=?,PDATE=?,FIRST_NAME=?,LAST_NAME=?,JOB=?,AMOUNT=?,PAYBY=? where PAYID="+id;
            
        PreparedStatement ps=conn.prepareStatement(sql);
        ps.setInt(1, id);
        ps.setString(2, pdate);
        ps.setString(3, fname);
        ps.setString(4, lname);
        ps.setString(5, job);
        ps.setString(6, amt);
        ps.setString(7, pby);
       
        int i=ps.executeUpdate();
        
        if(i>0)
        {
            response.sendRedirect("DisplayEmpPayment.jsp");
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