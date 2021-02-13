
<%@page contentType="text/html" pageEncoding="Shift_JIS" import="java.util.*" %>

<%!
    private String strEscape(String strEsc){

        StringBuilder strResult = new StringBuilder();
            
        for(int i = 0; i < strEsc.length(); i++){
            switch(strEsc.charAt(i)){

                case '<'    :
                    strResult.append("&lt;");
                    break;

                case '>'    :
                    strResult.append("&gt;");
                    break;

                default     :
                    strResult.append(strEsc.charAt(i));
            }
        }
        
        return strResult.toString();
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
        <title>�\�񕶎��̃G�X�P�[�v</title>
    </head>
    <body>
        <h1 style="background: #cccccc">�\�񕶎��̃G�X�P�[�v</h1>
        
        <%
            String sendText = request.getParameter("text");
            boolean flg = false;
            
            flg = new Boolean(request.getParameter("esc")).booleanValue();
        %>
        
        <% if (flg){ %>
            <h2>�\�񕶎��̃G�X�P�[�v <font color="blue">�I��</font></h2>
            <p>���͂������� : <%=strEscape(sendText) %></p>
        <% }else { %>
            <h2>�\�񕶎��̃G�X�P�[�v <font color="red">�I�t</font></h2>
            <p>���͂������� : <%=sendText %></p>
        <% } %>
    </body>
</html>
