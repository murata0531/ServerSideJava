
<%@page contentType="text/html" pageEncoding="Shift_JIS"%>
<jsp:useBean id="auth" class="ssj13.AuthBean" scope="page" />

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
        <title>���j���[</title>
    </head>
    <body backcolor="#FFFFFF"><center>
        
        <%
            String inputUserName = request.getParameter("name");
            String inputPassword = request.getParameter("pass");
            
            auth.check(inputUserName, inputPassword);
            
            if(auth.getResult() == true){ %>
                
                �悤�����A<%= inputUserName %>����I<br><br>
            
                
            <% } else { %>
                <p><font color="red">���[�U�[���܂��̓p�X���[�h���Ⴂ�܂�</p>
            <% } %>
                <br><br><a href='../ssj13/index.html'>�߂�</a>
    </center></body>
</html>
