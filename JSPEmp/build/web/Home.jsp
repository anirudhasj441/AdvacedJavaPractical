<%-- 
    Document   : Home
    Created on : Feb 22, 2020, 11:03:08 AM
    Author     : User
--%>

<%@page import="java.sql.Connection" import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            PreparedStatement ps=con.prepareStatement("insert into emplyoee value(?,?,?)");
            ps.setString(1,vempid);
            ps.setString(2,vename);
            ps.setString(3,vec);
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
