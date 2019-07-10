<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="./../resources/ajax/SendProfileImage.js"></script>
<title>File Upload to Database Demo</title>
</head>
<body>
    <center>
        <h1>File Upload to Database Demo</h1>
        <form method="post" enctype="multipart/form-data">
            <table border="0">
                <tr>
                    <td>Image Id: </td>
                    <td><input type="text" name="idImage" size="50"/></td>
                </tr>
                <tr>
                    <td>Profile Id: </td>
                    <td><input type="text" name="idProfile" size="50"/></td>
                </tr>
                <tr>
                    <td>Image: </td>
                    <td><input id="profileImage" type="file" name="img" size="50"/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Save" onclick="sendProfileImage()">
                    </td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>