<%@page import="java.sql.*,java.util.*"%>

<%
    int  id=Integer.parseInt(request.getParameter("cid"));
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String dob=request.getParameter("dob");
    String email=request.getParameter("email");
    String phoneno=request.getParameter("phoneno");
    String branch=request.getParameter("branch");
    String gen=request.getParameter("gen");
    String tech=request.getParameter("tech");
    int fees=Integer.parseInt(request.getParameter("fees"));
    
    String idate1=request.getParameter("idate1");
    String idate2=request.getParameter("idate2");
    String idate3=request.getParameter("idate3");
    
    int iamt1=Integer.parseInt(request.getParameter("iamt1"));
    int iamt2=Integer.parseInt(request.getParameter("iamt2"));
    int iamt3=Integer.parseInt(request.getParameter("iamt3"));
    
    
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        
        String sql="update candidate set CID=?,FIRST_NAME=?,LAST_NAME=?,DOB=?,EMAIL=?,PHONENO=?,BRANCH=?,GENDER=?,TECHNOLOGY=?,FEES=?,IDATE1=?,IDATE2=?,IDATE3=?,IAMT1=?,IAMT2=?,IAMT3=? where cid="+id;
            
        PreparedStatement ps=conn.prepareStatement(sql);
        ps.setInt(1, id);
        ps.setString(2, fname);
        ps.setString(3, lname);
        ps.setString(4, dob);
        ps.setString(5, email);
        ps.setString(6, phoneno);
        ps.setString(7, branch);
        ps.setString(8, gen);      
        ps.setString(9, tech);
        ps.setInt(10, fees);
        ps.setString(11, idate1);
        ps.setString(12, idate2);
        ps.setString(13, idate3);
        ps.setInt(14, iamt1);
        ps.setInt(15, iamt2);
        ps.setInt(16, iamt3);
        
        int i=ps.executeUpdate();
        
        if(i>0)
        {
            response.sendRedirect("Registered_Candidate.jsp");
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