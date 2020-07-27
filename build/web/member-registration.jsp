<%-- 
    Document   : member-registration
    Created on : Jul 27, 2020, 1:29:32 PM
    Author     : rktirtho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link type="text/css" rel="stylesheet" href="res/css/style.css"/>
    </head>
    <body>
        <div class="container">
            <h2 style="text-align: center">
                CPC Member Registration Form.
            </h2>
            <center>
                <form action="m-reg-submit.jsp" method="post">
                    <table width ="">
                        <tr>
                            <td>Name</td>
                            <td><input class="single" type="" name="name" /></td>
                        </tr>
                        <tr>
                            <td>Father's Name</td>
                            <td><input class="single" type="" name="fName" /></td>
                        </tr>
                        <tr>
                            <td>Mother's Name</td>
                            <td><input class="single" type="" name="mName" /></td>
                        </tr>
                        <tr>
                            <td>Address</td>
                            <td><input class="single" type="" name="address" /></td>
                        </tr>
                        
                        <tr>
                            <td>Gender</td>
                            <td>
                                <select name="gender">
                                    <option value="male">Male</option>
                                    <option value="female">Female</option>
                                    <option value="others">Others</option>
                                </select>
                            </td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <td>Department</td>
                            <td>
                                <select name="department">
                                    <option value="cse">CSE</option>
                                    <option value="eete">EETE</option>
                                    <option value="accounting">Accounting</option>
                                    <option value="management">Management</option>
                                    <option value="law">Law</option>
                                    <option value="pharmacy">Pharmacy</option>
                                </select>
                            </td>
                            <td>
                                Shift:<input type="radio" name="Shift" value="day"/>Day
                                <input type="radio" name="shift" value="evening"/>Evening
                            </td>
                        </tr>
                        <tr>
                            <td>Class Roll<input type="number" name="roll"></td>
                            <td>Reg: Number: <input type="text" name="reg"/></td>
                        </tr>
                        
                        <tr>
                            
                            <td colspan="2">
                                <input style="display: block; margin: auto" class="btn btn-success" type="submit" value="Registration"/>
                            </td>
                        </tr>
                    </table>
                </form>
            </center>
        </div>
    </body>
</html>
