<%-- 
    Document   : m-reg-submit
    Created on : Jul 27, 2020, 1:31:02 PM
    Author     : rktirtho
--%>

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
            <center>
                <h2>My Application Form</h2>
                <table border='1'>
                    <tr>
                        <td><h3>Name</h3></td>
                        <td><% out.print(student.getName());%></td>
                    </tr>
                    <tr>
                        <td><h3>Father's Name</h3></td>
                        <td><%= student.getfName()%></td>
                    </tr>
                    <tr>
                        <td><h3>Mother's Name</h3></td>
                        <td><%= student.getmName()%></td>
                    </tr>
                    <tr>
                        <td><h3>Address</h3></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><h3>Gender</h3></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><h3>Department</h3></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><h3>Shift</h3></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><h3>Roll</h3></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><h3>Reg. No.</h3></td>
                        <td></td>
                    </tr>
                </table>
            </center>
        </div>
    </body>

</html>