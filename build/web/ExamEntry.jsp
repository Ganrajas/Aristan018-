
<%@page import="java.sql.*" %>

<%
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
        
// REGID EXAM_DATE FIRST_NAME LAST_NAME COURSE_NAME HR_ROUND_MARKS TECH_F2F_MARK TECH_WTEST_MARK OBTAIN_MARK RESULT


        String sql="insert into exam(REGID,EXAM_DATE,FIRST_NAME,LAST_NAME,COURSE_NAME,HR_ROUND_MARKS,TECH_F2F_MARK,TECH_WTEST_MARK,OBTAIN_MARK,RESULT)values('"+rid+"','"+edate+"','"+fname+"','"+lname+"','"+selected_tech+"','"+hr_round+"','"+technical_f2f+"','"+technical_wtest+"','"+obtained_mark+"','"+result+"')";
        int i= st.executeUpdate(sql);
        
        
        //out.println("Exam Entry Done Successfully.....!");
        response.sendRedirect("Display_Exam_Result.jsp");
        
       %>
      
     <%        
        
     }
     catch(Exception e)
     {
         System.out.println(e);
     }
    
    
    
    
    %>