
<%@page contentType="text/html" pageEncoding="Shift_JIS"%>
<jsp:useBean id="auth" class="ssj13.AuthBean" scope="page" />

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
        <title>メニュー</title>
    </head>
    <body backcolor="#FFFFFF"><center>
        
        <%
            String inputUserName = request.getParameter("name");
            String inputPassword = request.getParameter("pass");
            
            auth.check(inputUserName, inputPassword);
            
            if(auth.getResult() == true){ %>
                
                ようこそ、<%= inputUserName %>さん！<br><br>
            
                
            <% } else { %>
                <p><font color="red">ユーザー名またはパスワードが違います</p>
            <% } %>
                <br><br><a href='../ssj13/index.html'>戻る</a>
    </center></body>
</html>
