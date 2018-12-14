<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Connection"%>
 <%@page contentType="text/html" pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>InsertPage</title>
    </head>
    <body>
    <center>
        <h1>Update</h1>
        <h1> Author </h1>
        <form name="f1" method="POST" action="updateAuthor.jsp">
            A_ID:  <input type="text" name="aid" value=""> <br> <br>
            Author Name: <input type="text" name="aname" value=""> <br> <br>
            L_ID: <input type="text" name="lid" value=""> <br> <br>
             <input type="submit" value="SUBMIT">
        </form> 
            <%
            String aid1=request.getParameter("aid");
            String aname1=request.getParameter("aname");
            String lid1 = request.getParameter("lid");
            
           Connection con = null;
           ResultSet result=null;
            try {
                
                Class.forName("oracle.jdbc.OracleDriver");
                con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","navya");
            } catch (ClassNotFoundException e) {
                out.println("ClassNotFoundException caught: " +e.getMessage());
            }
            catch (SQLException e) {
                out.println("SQLException caught: " +e.getMessage());
            } 
            if(aid1!=null && aname1!=null && lid1!=null) {
            PreparedStatement ps = null;     
                try {
                         ps = con.prepareStatement("UPDATE AUTHOR SET AUTHOR_NAME=? WHERE A_ID=?");                            
                         ps.setString(1, aname1);    //set the first paremter to language ID
                        // ps.setString(2, lid1);
                         ps.setString(2, aid1);
                         int i = ps.executeUpdate();
                         //Statement stat2=con.createStatement();
                        // result=stat2.executeQuery("select * from LANGUAGE"); 
                        if(i!=0)
                            out.println("Updated successfully"); 
                    }
               catch(Exception e) { out.println("error"+e); } 
            }
            
%>        
    </center>
    </body>
</html>

