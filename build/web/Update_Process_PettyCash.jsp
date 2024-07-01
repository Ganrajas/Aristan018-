<%@page import="java.sql.*,java.util.*"%>

<%
    int  id=Integer.parseInt(request.getParameter("PCASHID"));
    String pdate=request.getParameter("pdate");
    String pdetail=request.getParameter("pdetail");
    String pqty=request.getParameter("pqty");
    String prate=request.getParameter("prate");
    String bamt=request.getParameter("bamt");
    String pby=request.getParameter("pby");
    String aby=request.getParameter("aby");
       
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        
        String sql="update pettycash set PCASHID=?,PURCHASE_DATE=?,PURCHASE_DETAIL=?,PURCHASE_QTY=?,PURCHASE_RATE=?,BILL_AMT=?,PURCHASE_BY=?,APPROVAL_BY=? where PCASHID="+id;
            
        PreparedStatement ps=conn.prepareStatement(sql);
        ps.setInt(1, id);
        ps.setString(2, pdate);
        ps.setString(3, pdetail);
        ps.setString(4, pqty);
        ps.setString(5, prate);
        ps.setString(6, bamt);
        ps.setString(7, pby);
        ps.setString(8, aby);
       
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