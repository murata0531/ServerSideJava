

<%@page contentType="text/html" pageEncoding="Shift_JIS" import="java.io.*" %>
<%-- request.setCharacterEncoding("Shift_JIS"); --%>
<%! private String strEncode(String strVal)throws UnsupportedEncodingException{
    
        if(strVal == null){
            return null;
        }else{
            return(new String(strVal.getBytes("ISO-8859-1"),"Shift_JIS"));
        }
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
        <title>���O�C���t�H�[��</title>
    </head>
    <body>
    <center>
        <h1 style="background:#cccccc">���O�C���t�H�[��</h1>
        <p>�悤���� <% out.print(strEncode(request.getParameter("nam"))); %></p>
    </center>
    </body>
</html>
