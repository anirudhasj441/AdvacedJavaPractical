<%-- 
    Document   : input
    Created on : Mar 6, 2020, 8:09:14 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <s:property value="error"/>
        <s:form action="Hello">
            <s:textfield name="uname"/> 
            
            <s:submit value="submit"/>
        </s:form>

    </body>
</html>
