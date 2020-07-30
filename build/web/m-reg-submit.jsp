<%-- 
    Document   : m-reg-submit
    Created on : Jul 27, 2020, 1:31:02 PM
    Author     : rktirtho
--%>

<%@page import="com.diucpc.dao.ApplicationDBHelper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean  id="student"  class="com.diucpc.students.Student"/>
<jsp:setProperty name="student" property="*"/>
<!DOCTYPE html>
<html>
   
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link type="text/css" rel="stylesheet" href="res/css/style.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        
        <div class="container">
            <%
                ApplicationDBHelper bHelper = new ApplicationDBHelper();
                boolean status= bHelper.insertApplication(student);
                if (status) {
                        out.print("<h2>Successfully Inserted</h2>");
                    }else{
                    out.print("<h2 style=\"color:red\">Error</h2>");
                }

            %>
        </div>
    </body>

</html>