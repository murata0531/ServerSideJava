
<%@page contentType="text/html" pageEncoding="Shift_JIS"%>
<% request.setCharacterEncoding("Shift_JIS"); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
        <title>���O�C���t�H�[��</title>
    </head>
    <body>
    <center>
        <h1 style="background:#cccccc">���O�C���t�H�[��</h1>
        <p>�悤���� <% out.print(request.getParameter("nam")); %></p>
    </center>
    </body>
</html>
