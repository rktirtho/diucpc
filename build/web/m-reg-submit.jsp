<%-- 
    Document   : m-reg-submit
    Created on : Jul 27, 2020, 1:31:02 PM
    Author     : rktirtho
--%>

<%@page import="com.diucpc.students.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link type="text/css" rel="stylesheet" href="res/css/style.css"/>
        <title>JSP Page</title>
    </head>
    <body>
         <%
            Student student = new Student();
            student.setName(request.getParameter("name"));
            student.setfName(request.getParameter("fName"));
            student.setmName(request.getParameter("mName"));
            student.setAddress(request.getParameter("address"));
            student.setGender(request.getParameter("gender"));
            student.setDepartment(request.getParameter("department"));
            student.setShift(request.getParameter("shift"));
            student.setRoll(request.getParameter("roll"));
            student.setReg(request.getParameter("reg"));


        %>

        <div class="container">
            <center>
                <h2>My Application Form</h2>
                <table border='1'>
                    <tr>
                        <td><h3>Name</h3></td>
                        <td><%= student.getName()%></td>
                    </tr>
                    <tr>
                        <td><h3>Father's Name</h3></td>
                        <td><%= student.getfName()%></td>
                    </tr>
                    <tr>
                        <td><h3>Mother's Name</h3></td>
                        <td></td>
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