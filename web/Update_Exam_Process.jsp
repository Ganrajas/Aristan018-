<%@page import="java.sql.*,java.util.*"%>

<%
    Integer id=Integer.parseInt(request.getParameter("EID"));
    Integer rid=Integer.parseInt(request.getParameter("rid"));
    String edate=request.getParameter("edate");
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String selected_tech=request.getParameter("selected_tech");
    
    Integer hr_round=Integer.parseInt(request.getParameter("hr_round"));
    Integer technical_f2f=Integer.parseInt(request.getParameter("technical_f2f"));
    Integer technical_wtest=Integer.parseInt(request.getParameter("technical_wtest"));
    Integer obtained_mark=Integer.parseInt(request.getParameter("obtained_mark"));
    String result=request.getParameter("result");
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        
        String sql="update exam set EID=?,REGID=?,EXAM_DATE=?,FIRST_NAME=?,LAST_NAME=?,COURSE_NAME=?,HR_ROUND_MARKS=?,TECH_F2F_MARK=?,TECH_WTEST_MARK=?,OBTAIN_MARK=?,RESULT=? where EID="+id;
            
        PreparedStatement ps=conn.prepareStatement(sql);
        ps.setInt(1, id);
        ps.setInt(2, rid);
        ps.setString(3, edate);
        ps.setString(4, fname);
        ps.setString(5, lname);
        ps.setString(6, selected_tech);
        ps.setInt(7, hr_round);
        ps.setInt(8, technical_f2f);
        ps.setInt(9, technical_wtest);
        ps.setInt(10, obtained_mark);
        ps.setString(11, result);
    
        
        int i=ps.executeUpdate();
        
        if(i>0)
        {
            response.sendRedirect("Display_Exam_Result.jsp");
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