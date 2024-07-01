<%@page import="java.sql.*,java.util.*"%>
  
<%
    
     
       try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        PreparedStatement st=conn.prepareStatement("select username,password from user where USERNAME=? and password=?");
       
         String user=request.getParameter("uname");
          String pass=request.getParameter("pass");
         
           session.setAttribute("sessionuser",user);
           
         st.setString(1, user);
         st.setString(2, pass);
    
        ResultSet rs=st.executeQuery();
       
        
    if(rs.next())
   {
        response.sendRedirect("Employee_dashboard.jsp");
   } 
    else if(user.equals("Admin") && pass.equals("Admin123") )
   {
        response.sendRedirect("admin_dashboard.jsp");
   }
    else 
   {
      
    %>
    <script>
        alert("Please Check Uname & Pass");
    </script>
    <%
       response.sendRedirect("index.html");
   }
    
 %>
  <%
        
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
    %>
   