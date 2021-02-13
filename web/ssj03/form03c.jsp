
<%@page contentType="text/html" pageEncoding="Shift_JIS"%>
<% request.setCharacterEncoding("Shift_JIS"); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
        <title>ログインフォーム</title>
    </head>
    <body>
    <center>
        <h1 style="background:#cccccc">ログインフォーム</h1>
        <p>ようこそ <% out.print(request.getParameter("nam")); %></p>
    </center>
    </body>
</html>
