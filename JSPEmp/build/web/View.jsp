<%-- 
    Document   : View
    Created on : Feb 22, 2020, 11:50:00 AM
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
            try  {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/empdb29","root","");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select*from emplyoee");
            ResultSetMetaData rsm=rs.getMetaData();
            
                int cols=rsm.getColumnCount();
                out.println("<html>");
                out.println("<body>");
                out.println("<table border=1>");
                out.println("<tr>");
                for(int i=1;i<=cols;i++)
                {
                    out.println("<tr>");
                    out.println(rsm.getCatalogName(i));
                    out.println("</tr>");
                }
                out.println("</tr>");
                rs.last();
                int rows=rs.getRow();
                rs.beforeFirst();
                int count=0;
                while(rs.next())
                {
                    out.println("<tr>");
                    for(int i=1;i<=cols;i++)
                    {
                        out.println("<td>");
                        out.println(rs.getString(i));
                        out.println("</td>");
                        
                    }
                    count++;
                    out.println("</tr>");
                        
                            
                }
                 out.println("</table>");
                 out.println("</body>");
                 out.println("</html>");
                
            
           
        }
        catch(Exception e){
            out.println(e.getMessage());
        }
           
    

        %>
    </body>
</html>
