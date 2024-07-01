
<%@page import="java.sql.*"%>

<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
          body{
            background-image: url("back2.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            margin: 0px;
            font-family: bold;
          }
          #brandname{
            background: linear-gradient(to right,deeppink,gold,limegreen,blue,purple);
            padding: 10px;
            color: white;
            width: 120%;
            box-shadow: 0px 5px 15px rgba(0,0,0,0.8);
            position: sticky;
            top: 0;
            left: 0;
          }
          #tagline{
            margin-top: -10px;
          }
          .main{
            background-color: rgba(0,0,0,0.3);
            margin-top: -20px;
            text-align: center;
            color: white;
            width: 100%;
            padding-bottom: 20px;
          }
         
          h1{
            text-shadow: 2px 2px black;
          }

            table{
                border-collapse: collapse;
                border: 2px solid lightgray;
                width: 120%;
            }
            th,td{
                padding: 10px;
                text-align: center;
            }
            tr:hover ,td:hover{
                background-color: deeppink;
                color: white;               
            }           
            th{
                color: white;
            }
            td{
                color: black;
            }
            td:hover{
                background-color: black;
                color: white;
            }
            p{
                margin-top: -10px;
            }
            
        </style>
    </head>
    
    <body>
        <div id="brandname">
         <h1> Aristan CRM - Enquiry Entry Details </h1>
        
        <p id="tagline"> Education Empowerment </p>
        <p>
        <% String names=(String)session.getAttribute("sessionuser"); 
            out.print("Welcome "+names);
        %>
        </p>
        </div>
        <br>
        <!---------------------------------------------------------------------------->
        
     
     <form method="post">
      <div class="row">
          <div class="col-sm-5">
              <a href="Employee_dashboard.html">
            <button id="gotobutton" class="btn btn-primary"> <span class="glyphicon glyphicon-home"> </span> Go to Employee Dashboard</button>
       </a>
              
        <a href="Enquiry_management.jsp">
            <button id="gotobutton" class="btn btn-primary"> <span class="glyphicon glyphicon-home"> </span> Go to Enquiry Dashboard</button>
        </a> 
     
          </div>
          <div class="col-sm-4">
      <select name="search_tech" class="mytextbox form-control">
          <option value="" disabled selected>------Select Technology------</option>
          <option value="C Programming">C Programming</option>
          <option value="CPP Programming">CPP Programming</option>
          <option value="Core Java">Core Java</option>
          <option value="Python">Python Programming</option>
          <option value="PHP">PHP Programming</option>
          <option value="Javascript">Javascript Programming</option>
          
          <option value="" disabled>----Select Internship Technology----</option>
          <option value="Java Internship">Java Internship</option>
          <option value="Python Internship">Python Internship</option>
          <option value="PHP Internship">PHP Internship</option>
          <option value="Web Internship">Web Internship</option>
          
          <option value="" disabled>----Select FSD Technology----</option>
          <option value="Java FSD">Java FSD</option>
          <option value="Python FSD">Python FSD</option>
          <option value="PHP FSD">PHP FSD</option>
          <option value="Web FSD">Web FSD</option>
      </select>
         
          </div>
          <div class="col-sm-3">
             <button class="btn btn-primary" type="submit">Search Record  &nbsp;&nbsp; <span  class="glyphicon glyphicon-search"></span> </button>
           
        <a href="logoutprocess.jsp"> 
            <button class="btn btn-primary" type="button"><span  class="glyphicon glyphicon-log-out"></span>Log out &nbsp;&nbsp;</button>                            
        </a>
          </div>
          
          </div>
          
     </form>




<!--
        ----------------------------------------------------------------------
        -->
        
   
    <table border="1" align="center" class="bordered">
        <tr bgcolor="deeppink"> 
            <th>Enquiry Id</th>
            <th>First name</th>
            <th>Last name</th>
            <th>Email</th>
            <th>Phone No</th>
            <th>Gender</th>
            <th>Required Time</th>
            <th>Modular</th>
            <th>Internship</th>
            <th>Job Oriented</th>
            <th>Training Cost</th>
            <th colspan="2">Action</th>
        </tr>
<%
    String stech_x=request.getParameter("search_tech");
         
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aristan_java_db","root","");
        
        Statement st=conn.createStatement();
        String sql="select * from enquiry  where modular='"+stech_x+"' or intern='"+stech_x+"' or job='"+stech_x+"'";
        ResultSet rs= st.executeQuery(sql);
        int x=1;
        while(rs.next())
        {
  %>
            <tr>
               <td> <%=rs.getString("eid")%> </td>
               <td> <%=rs.getString("FIRST_NAME")%> </td>
               <td> <%=rs.getString("LAST_NAME")%> </td>
               <td> <%=rs.getString("EMAIL")%> </td>
               <td> <%=rs.getString("PHONENO")%> </td>
               <td> <%=rs.getString("GENDER")%> </td>
               <td> <%=rs.getString("RTIME")%> </td>
               <td> <%=rs.getString("modular")%> </td>
               <td> <%=rs.getString("intern")%> </td>
               <td> <%=rs.getString("job")%> </td>
               <td> <%=rs.getString("TCOST")%> </td>
               
               <td><a href="DeleteEnquiry.jsp?id=<%=rs.getString("eid")%>">
                   <span class="glyphicon glyphicon-trash" onclick="return confirm('Do you want  to delete the record ? ')"></span></a></td>
               
               <td><a href="UpdateEnquiry.jsp?id=<%=rs.getString("eid")%>">
                   <span class="glyphicon glyphicon-pencil"></span></a></td>
               
            </tr>
    <%
        x++;
        
        }
            conn.close();
        }
        catch(Exception e)
        { 
            System.out.println(e);
        }
    %>
    
    </table>
    </body>
</html>
