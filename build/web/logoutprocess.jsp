<!DOCTYPE html>
<html>
<head>
  <title> www.aristan.com</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style type="text/css">
    body{
      background-image: url("back2.jpg");
      background-repeat: no-repeat;
      background-size: cover;
      margin: 0px;
      font-family: bold;
    }
    #brandname{
      background: linear-gradient(to right , deeppink , gold , limegreen , blue , purple);
      padding:20px;
      color: white;
      box-shadow: 0px 5px 15px rgba(0,0,0,0.8);
    }
    #tagline{
      margin-top: -10px;
    }
    
    h1{
        margin-top: -10px;                                                                          
      padding-top: 10px;
      text-shadow: 2px 2px steelblue;
    }
    #anchortag{
      text-decoration: none;
      justify-content:center;
      text-align: center;
      
      color: blue;
    }
    #anchortag:hover{
      color:purple;
    }
    
    h2{
      padding-top: 10px;
      justify-content:center;
      text-align: center;
      text-shadow: 1px 1px steelblue;
      font-size: 50px;
    }
    
  </style>
</head>
<body>
    <div id="brandname">
    <h1> Aristan CRM </h1>
    <p id="tagline"> Education Empowerment </p>
    <p>
        <%String names=(String)session.getAttribute("sesssionuser"); 
       out.print("Welcome "+names);
       %>
    </p> 
    </div>


        <%

            session.invalidate();

        %>

        <h2><font >You are Sucessfully logged out...</font></h2>

        <br> <br>
<center>
        <a href="index.html"> 
             
              <button class="btn btn-primary" type="button">
   
              <span  class="glyphicon glyphicon-home"></span> Go-Back To Home Page &nbsp;&nbsp;
                  
              </button>
             </a>
</center>

    </body>

</html>