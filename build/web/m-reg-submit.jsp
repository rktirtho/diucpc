<%-- 
    Document   : m-reg-submit
    Created on : Jul 27, 2020, 1:31:02 PM
    Author     : rktirtho
--%>

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
            String name = request.getParameter("name");
            String fName = request.getParameter("fName");
            String mName = request.getParameter("mName");
            String address = request.getParameter("address");
            String gender = request.getParameter("gender");
            String department = request.getParameter("department");
            String shift = request.getParameter("shift");
            String roll = request.getParameter("roll");
            String reg = request.getParameter("reg");


        %>

        <div class="container">
            <center>
                <h2>My Application Form</h2>
                <table border='1'>
                    <tr>
                        <td><h3>Name</h3></td>
                        <td><%= name%></td>
                    </tr>
                    <tr>
                        <td><h3>Father's Name</h3></td>
                        <td><%= fName%></td>
                    </tr>
                    <tr>
                        <td><h3>Mother's Name</h3></td>
                        <td><%= mName%></td>
                    </tr>
                    <tr>
                        <td><h3>Address</h3></td>
                        <td><%= address%></td>
                    </tr>
                    <tr>
                        <td><h3>Gender</h3></td>
                        <td><%= gender%></td>
                    </tr>
                    <tr>
                        <td><h3>Department</h3></td>
                        <td><%= department%></td>
                    </tr>
                    <tr>
                        <td><h3>Shift</h3></td>
                        <td><%= shift%></td>
                    </tr>
                    <tr>
                        <td><h3>Roll</h3></td>
                        <td><%= roll%></td>
                    </tr>
                    <tr>
                        <td><h3>Reg. No.</h3></td>
                        <td><%= reg%></td>
                    </tr>
                </table>
            </center>
        </div>
    </body>

</html>

# CPC Java Trainig class project

How to work with this repository
=================================

 1. Fork this project you got a same repository in your github.
 2. Now clone it to your PC. #Command: git clone <ulr of forked repository>.
 3. Now you get a same project in you PC.
 4. If you get behind from this main(this) repository use the following command:
       git remote add upstream https://github.com/rktirtho/diucpc.git (for first time)
       git fetch upstream
       git merge upstream/master