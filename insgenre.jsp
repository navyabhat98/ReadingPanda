<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>
 <%@page contentType="text/html" pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html lang="en">
    <head>
        <title> Reading Panda </title>
        <!-- meta tags-->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">       
        <!-- Bootstrap frame work css -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="shortcut icon" type="image/png" href="logo1.png">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
            <style>
                .carousel-inner img {
                    width: 100%;
                    height: 375px;
                }
                .carousel-control-prev-icon, .carousel-control-next-icon {
                        height: 35px;
                        width: 35px;
                        outline: black;
                        background-color: rgba(0, 0, 0, 0.3);
                        background-size: 25% 25%;
                        border-radius: 50%;                      
                    }
                    .navbar-right {
                        padding-left: 10px;
                    }
                    {
    box-sizing: border-box;
}

body {
    margin: 0;
    font-family: Arial;
    font-size: 17px;
}

#myVideo {
    position: fixed;
    right: 0;
    bottom: 0;
    min-width: 100%; 
    min-height: 100%;
}

.content {
    position: fixed;
    bottom: 0;
    background: rgba(0, 0, 0, 0.5);
    color: #f1f1f1;
    width: 80%;
    padding: 3px;
}
#customers {
    font-family: "cursive", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 60%;
}

#customers td, #customers th {
    border: 1px solid #ddd;
    padding: 3px;
}

#customers tr:nth-child(even){background-color: #ffffcc;}

#customers tr:hover {background-color: #ffffcc;}

#customers th {
    padding-top: 3px;
    padding-bottom: 3px;
    text-align: left;
    background-color: #cc9900;
    color: white;
}


.myBox {
border: none;
padding: 5px;
font: 24px/36px sans-serif;
width: 500px;
height: 400px;
overflow: scroll;
}

/* Scrollbar styles */
::-webkit-scrollbar {
width: 12px;
height: 12px;
}

::-webkit-scrollbar-track {
border: 1px #ffffcc;
border-radius: 10px;
}

::-webkit-scrollbar-thumb {
background: #ffffcc;  
border-radius: 10px;
}

::-webkit-scrollbar-thumb:hover {
background: #ffffcc;  
}





.navbar-right {
                        padding-left: 900px;
                    }
                    
                    body#LoginForm { 
                        background-repeat:no-repeat; 
                        background-position:center; 
                        background-size:cover; 
                        padding:0px;
                    }

                    .form-heading { color:#fff; font-size:23px;}
                    .panel h2{ color:#444444; font-size:18px; margin:0 0 8px 0;}
                    .panel p { color:#777777; font-size:14px; margin-bottom:30px; line-height:24px;}
                   
                    .login-form .form-control {
                        background: #f7f7f7 none repeat scroll 0 0;
                        border: 1px solid #d4d4d4;
                        border-radius: 14px;
                        font-size: 14px;
                        height: 50px;
                        line-height: 50px;
                    }
                    
                    .main-div {
                        background: none repeat scroll 0 0;
                        border-radius: 13px;
                        margin: 10px auto 30px;
                        max-width: 80%;
                        padding: 0px 70px 70px 71px;
                        
                    }

                    .login-form .form-group {
                        margin-bottom:10px;
                    }
                    
                    .login-form{ text-align:left; }
                               
                    .login-form  .btn.btn-primary {
                         background: #000000 none repeat scroll 0 0;
                         border-color: #ffffff;
                         color: #000000;
                         font-size: 14px;
                         width: 100%;
                         height: 50px;
                         line-height: 50px;
                         padding: 0;
                    }
                
                    .forgot {
                         text-align: left; margin-bottom:30px;
                    }
                    
                    .botto-text {
                          color: #ffffff;
                          font-size: 14px;
                          margin: auto;
                    }
                    .btn { border-radius: 14px;}
                    .login-form .btn.btn-primary.reset {
                            background: #ff9900 none repeat scroll 0 0;
                            border-radius: 14px;
                    }
                    .container { padding-top: 0px;}
                    .back { text-align: left; margin-top:10px;}
                    .back a {color: #444444; font-size: 13px;text-decoration: none;}




            </style>
    </head>
    <body>
    <video autoplay muted loop id="myVideo">
  <source src="video.mp4" type="video/mp4">

</video>
    <nav class="navbar navbar-expand-sm bg-black">

            <a class="navbar-brand" href="home.html"><img src="logo.png" height="50" width="55"></a>  
                <ul class="navbar-nav">
              <li class="nav-item">    
                  <h1 style="font-family:cursive;"><font color="red"><b>Reading Panda</b></font> </h1>
                 
              </li>
            </ul>
             <ul class="nav navbar-nav">
                <li><a href="insert.jsp"><button style="background-color:#ff5c33" class="btn"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i><b> INSERT</b></button></a></li>
				<li><a href="delete.jsp"><button style="background-color:#ff5c33" class="btn"><i class="fa fa-trash" aria-hidden="true"></i><b>DELETE</b></button></a></li>
				<li><a href="update.jsp"><button style="background-color:#ff5c33" class="btn"><i class="fa fa-wrench" aria-hidden="true"></i><b>UPDATE</b></button></a></li>
             </ul>
          </nav>

    	
  <div class="container">
  <div class="row">
    <div class="col" align="left">
    <div class="LoginForm">   
            <div class="container">
                    
                <div class="login-form">
                    <div class="main-div">
                        <div class="panel">
                            <h1  style="font-family:cursive;"><font color="#ff3333">INSERT GENRE</font></h1>
                            <br>
                         </div>
        	<form id="Login" name="f1" method="POST" action="insgenre.jsp">
        	<div class="form-group">
           <font color="#ff3333"> GENRE ID:</font>  <input type="text" name="G_ID" value=""> <br>
            </div>
            <div class="form-group">
            <font color="#ff3333">GENRE NAME:</font> <input type="text" name="G_NAME" value=""> <br>
            </div>
            
           
           
         
            
            <%
            String G_ID=request.getParameter("G_ID");
            String G_NAME=request.getParameter("G_NAME");
            
            
           java.sql.Connection con = null;
           ResultSet result=null;
            try {
            	
                
            	Class.forName("com.mysql.jdbc.Driver").newInstance();
                con=DriverManager.getConnection("jdbc:mysql://localhost/readingpanda?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "rachitha");
                //out.println("Connected!");
            } catch (ClassNotFoundException e) {
                out.println("ClassNotFoundException caught: " +e.getMessage());
            }
            catch (SQLException e) {
                out.println("SQLException caught: " +e.getMessage());
            } 
            Statement statement = con.createStatement() ;

            result = statement.executeQuery("select * from mood") ;
                      
                      
        %>
        
    <font color="#ff3333"> MOOD ID:</font>
        <select name="M_ID">
        <%  while(result.next()){ %>
            <option><%= result.getString("M_ID")%></option>
        <% } %>
        </select>

        <%  
        String s=request.getParameter("M_ID");
  if(G_ID!=null && G_NAME!=null && s!=null) {
	  try{
    					PreparedStatement ps1 = null;
						ps1 = con.prepareStatement("INSERT INTO GENRE VALUES(?,?,?)");
		               ps1.setString(1, G_ID);    //set the first paremter to language ID
		              ps1.setString(2, G_NAME);
		               ps1.setString(3,s);
		               int a=ps1.executeUpdate();
		                
	  }

        catch(Exception e) { out.println("error  "+e); }
    
}  
    
     
 %>
 <br>
 <br>
            <input type="submit" value="insert">
        </form>
            </div>
            </div>
            </div>
           
    

 </div>
 </div>

 
    
    
    
    
    
    
    
    
     
    
    <div class="col">
       	 <button style="background-color:#ffffcc" type="button" onClick="window.location.reload();"><b><h1 style="font-family:cursive;align:centre;"><font color="red">TABLES</font></h1></b></button>
        	<form name="f1" method="POST" action="show.jsp">
<!--            BOOK ID:  <input type="text" name="B_ID" value=""> <br> <br>     -->
            
            
            
        </form>
        
         <div class="myBox">
    
<%  
 Statement st1 = con.createStatement();
ResultSet rs1=st1.executeQuery("select * from language");

 %>
 <h3><font color="#ffff99">LANGUAGE</font></h3>
 <table id="customers">
            <TR>
                <TH>L_ID</TH>
                <TH>L_NAME</TH>
                
            </TR>
            <% while(rs1.next()){ %>
            <TR>
                <TD> <%= rs1.getString(1) %></td>
                <TD> <%= rs1.getString(2) %></TD>
                
            </TR>
            <% } %>
        </TABLE>
        <%  
        ResultSet rs2=null;
 Statement st2 = con.createStatement();
        rs2 = statement.executeQuery("select * from mood") ;
 %>
 <br>
 

 <h3><font color="#ffff99">MOOD</font></h3>
 <table id="customers">
            <TR>
                <TH>M_ID</TH>
                <TH>M_NAME</TH>
                
            </TR>
            <% while(rs2.next()){ %>
            <TR>
                <TD> <%= rs2.getString(1) %></td>
                <TD> <%= rs2.getString(2) %></TD>
                
            </TR>
            <% } %>
        </TABLE>
        
        <%  
 Statement st3 = con.createStatement();
ResultSet rs3=st3.executeQuery("select * from genre");

 %>
 <br>
 

 <h3><font color="#ffff99">GENRE</font></h3>
 
 <table id="customers">
            <TR>
                <TH>G_ID</TH>
                <TH>G_NAME</TH>
                <TH>M_ID</TH>
                
            </TR>
            <% while(rs3.next()){ %>
            <TR>
                <TD> <%= rs3.getString(1) %></TD>
                <TD> <%= rs3.getString(2) %></TD>
                <TD> <%= rs3.getString(3) %></TD>
                
            </TR>
            <% } %>
        </TABLE>
        <%  
 Statement st4 = con.createStatement();
ResultSet rs4=st4.executeQuery("call ps1()");

 %>
 <br>


 <h3><font color="#ffff99">AUTHOR</font></h3>
 <table id="customers">
            <TR>
                <TH>A_ID</TH>
                <TH>AUTHOR_NAME</TH>
                <TH>L_ID</TH>
                
            </TR>
            <% while(rs4.next()){ %>
            <TR>
                <TD> <%= rs4.getString(1) %></TD>
                <TD> <%= rs4.getString(2) %></TD>
                <TD> <%= rs4.getString(3) %></TD>
                
            </TR>
            <% } %>
        </TABLE>
        
        <%  
 Statement st5 = con.createStatement();
ResultSet rs5=st5.executeQuery("select * from book");

 %>
 <br>


 <h3><font color="#ffff99">BOOK</font></h3>
 <table id="customers">
            <TR>
                <TH>B_ID</TH>
                <TH>BOOK_NAME</TH>
                <TH>E_LINKS</TH>
                <TH>A_ID</TH>
                <TH>L_ID</TH>
                <TH>G_ID</TH>
                
                
            </TR>
            <% while(rs5.next()){ %>
            <TR>
                <TD> <%= rs5.getString(1) %></TD>
                <TD> <%= rs5.getString(2) %></TD>
                <TD> <%= rs5.getString(3) %></TD>
                <TD> <%= rs5.getString(4) %></TD>
                <TD> <%= rs5.getString(5) %></TD>
                <TD> <%= rs5.getString(6) %></TD>
                
            </TR>
            <% } %>
        </TABLE>
 
 
 <%  
 Statement st6 = con.createStatement();
ResultSet rs6=st6.executeQuery("select * from categorizes");

 %>
 <br>
 
 <h3><font color="#ffff99">CATEGORIZES</font></h3>
 <table id="customers">
            <TR>
                <TH>A_ID</TH>
                <TH>G_ID</TH>
                
            </TR>
            <% while(rs6.next()){ %>
            <TR>
                <TD> <%= rs6.getString(1) %></td>
                <TD> <%= rs6.getString(2) %></TD>
                
            </TR>
            <% } %>
        </TABLE>
        
        
        <%  
 Statement st7 = con.createStatement();
ResultSet rs7=st7.executeQuery("select * from writtenby");

 %>
  <br>

 
 <h3><font color="#ffff99">WRITTENBY</font></h3>
 <table id="customers">
            <TR>
                <TH>A_ID</TH>
                <TH>B_ID</TH>
                
            </TR>
            <% while(rs7.next()){ %>
            <TR>
                <TD> <%= rs7.getString(1) %></td>
                <TD> <%= rs7.getString(2) %></TD>
                
            </TR>
            <% } %>
        </TABLE>
        <br>
        <br>
        <br>
   </div>
   
   </div>
   </div>
   </div>
 
   
   
    
    </body>
</html>

<% 
	
%>








