<%@page import="java.sql.*,java.util.*"%>

<%
    int  id=Integer.parseInt(request.getParameter("CLIENT_ID"));
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String profe=request.getParameter("profe");
    String nbus=request.getParameter("nbus");
    String phoneno=request.getParameter("phoneno");
    String email=request.getParameter("email");
    String address=request.getParameter("address");
    
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        
        String sql="update cliententry set CLIENT_ID=?,FIRST_NAME=?,LAST_NAME=?,PROFESSION=?,NATURE_BUSSINESS=?,PHONENO=?,EMAIL=?,ADDRESS=? where CLIENT_ID="+id;
            
        PreparedStatement ps=conn.prepareStatement(sql);
        ps.setInt(1, id);
        ps.setString(2, fname);
        ps.setString(3, lname);
        ps.setString(4, profe);
        ps.setString(5, nbus);
        ps.setString(6, phoneno);
        ps.setString(7, email);
        ps.setString(8, address);
       
        int i=ps.executeUpdate();
        
        if(i>0)
        {
            response.sendRedirect("DisplayClientEntry.jsp");
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