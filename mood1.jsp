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
<%@ page import=" java.sql.DriverManager"%>
 <%@page contentType="text/html" pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Reading Panda </title>
        <!-- meta tags-->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">       
        <!-- Bootstrap frame work css -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="shortcut icon" type="image/png" href="logo1.png">
        <style>
            body#LoginForm { 
                        background-repeat:no-repeat; 
                        background-position:center; 
                        background-size:cover; 
                        padding:30px;
                    }

                    .form-heading { color:#fff; font-size:23px;}
                    .panel h2{ color:#444444; font-size:18px; margin:0 0 8px 0;}
                    .panel p { color:#f7f7f7; font-size:14px; margin-bottom:30px; line-height:24px;}
                   
                    .login-form .form-control {
                        background: #f7f7f7 none repeat scroll 0 0;
                        border: 1px solid #d4d4d4;
                        border-radius: 14px;
                        font-size: 14px;
                        height: 50px;
                        line-height: 50px;
                    }
                    
                    .main-div {
                        background: #ffffff none repeat scroll 0 0;
                        border-radius: 13px;
                        margin: 10px auto 30px;
                        max-width: 38%;
                        padding: 50px 70px 70px 71px;
                    }

                    .login-form .form-group {
                        margin-bottom:10px;
                    }
                    
                    .login-form{ text-align:center; }
                               
                    .login-form  .btn.btn-primary {
                         background: #383131 none repeat scroll 0 0;
                         border-color: #7D7070;
                         color: white;
                         font-size: 14px;
                         width: 100%;
                         height: 50px;
                         line-height: 50px;
                         padding: 0;
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
                    .container { padding-top: 60px;}
                    
        </style>
    </head>
    <body>
        <body style="background-image:url(mood1.jpg); background-size: 100%">
        <nav class="navbar navbar-expand-sm bg-white">
            <a class="navbar-brand" href="homPage.html"><img src="logo.png" height="50" width="55" href="homPage.html"></a>  
                <ul class="navbar-nav">
              <li class="nav-item">    
                  <h1 style="font-family:cursive; background-color:white;"><b>Reading Panda</b> </h1>
                 
              </li>
            </ul>
        </nav>
    	<center>
         <div class="LoginForm">   
            <div class="container">
                    
                <div class="login-form">
                    <div class="main-div">
                        <div class="panel">
                            <h2  style="font-family:cursive;">How is your mood today? </h2>
                                
                         </div>
                         <form id="Login" name="f1" method="POST" action="mood1.jsp">
                                <div class="form-group">
                                       Mood: <input type="text" class="form-control" name="M_NAME">
                                </div> 
                                
                     
    
                                
           
            <%
            String M_NAME=request.getParameter("M_NAME");
         
            
           java.sql.Connection con = null;
           ResultSet result=null;
           ResultSet res=null;
            try {
            	
                
            	Class.forName("com.mysql.jdbc.Driver").newInstance();
                con=DriverManager.getConnection("jdbc:mysql://localhost/readingpanda?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&useSSL=false&allowPublicKeyRetrieval=true", "root", "rachitha");
                //out.println("Connected!");
            } catch (ClassNotFoundException e) {
                out.println("ClassNotFoundException caught: " +e.getMessage());
            }
            catch (SQLException e) {
                out.println("SQLException caught: " +e.getMessage());
            } 
                      
        %>
            <button type="submit" class="btn btn-primary">Display</button>
       </form>
       </div>
        </div>
        </div>
       </div>
     
    
<%  
  if(M_NAME!=null) {
	  try{
		 // Statement st=con.createStatement();
		  //ResultSet rs=st.executeQuery("select m_id from mood where m_name=?");
		  //st.setString(1,M_NAME);
    					PreparedStatement ps1 = null;
						ps1 = con.prepareStatement("SELECT M_ID FROM MOOD WHERE M_NAME=?");
		                ps1.setString(1, M_NAME);    //set the first paremter to language ID
		           
		                result=ps1.executeQuery();
		                
		               //while(rs.next())
		            	   result.next();
		                String str = result.getString("M_ID");
		               // out.println(str);
	  }catch(Exception e) { out.println("error  "+e); }
	  try{
		                PreparedStatement ps2=null;
		                
		                ps2=con.prepareStatement("select distinct book_name from book b,genre g,mood m where g.m_id=? and g.g_id=b.g_id");
		                
		                ps2.setString(1,result.getString(1));
		                res = ps2.executeQuery();
		                while(res.next())
		                {%>
		                <table>
		                	<tr>
		                    <td> <%=res.getString(1) %></td>
		                    
		                </tr>
		                </table>
		               
		                	<% 
		                }
	  
		                
		            
		               
	  }

        catch(Exception ignored){}
    
}  
    
     
 %>
 
       
        
    </center>
    </body>
</html>










