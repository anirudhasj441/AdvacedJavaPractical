<%-- 
    Document   : Update
    Created on : Feb 22, 2020, 11:25:13 AM
    Author     : User
--%>



<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            String vempid=request.getParameter("eid");
            String vename=request.getParameter("ename");
            String vec=request.getParameter("ecountry");
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/empdb29","root","");
            PreparedStatement ps=con.prepareStatement("update emplyoee set ename=?,ecountry=? where eid=?");
            ps.setString(3,vempid);
            ps.setString(1,vename);
            ps.setString(2,vec);
            ps.executeUpdate();
            out.println("Data inserted succesfully");

        }
        catch(Exception e)
        {
            out.println(e.getMessage());
        }
            
        %>
    </body>
</html>
