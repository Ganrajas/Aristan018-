<%@page import="java.sql.*,java.util.*"%>

<%
    int  id=Integer.parseInt(request.getParameter("userid"));
    String first_name=request.getParameter("fname");
    String last_name=request.getParameter("lname");
    String uname=request.getParameter("uname");
    String password=request.getParameter("pass");
    String emailid=request.getParameter("email");
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        
        String sql="update user set USERID=?,FIRST_NAME=?,LAST_NAME=?,USERNAME=?,PASSWORD=?,EMAIL=? where userid="+id;
            
        PreparedStatement ps=conn.prepareStatement(sql);
        ps.setInt(1, id);
        ps.setString(2, first_name);
        ps.setString(3, last_name);
        ps.setString(4, uname);
        ps.setString(5, password);
        ps.setString(6, emailid);
        
        int i=ps.executeUpdate();
        
        if(i>0)
        {
            response.sendRedirect("DisplayUser.jsp");
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