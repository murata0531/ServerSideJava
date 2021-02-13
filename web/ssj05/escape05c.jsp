
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
        <title>予約文字のエスケープ</title>
    </head>
    <body>
        <h1 style="background: #cccccc">予約文字のエスケープ</h1>
        
        <%
            String sendText = request.getParameter("text");
            boolean flg = false;
            
            flg = new Boolean(request.getParameter("esc")).booleanValue();
        %>
        
        <% if (flg){ %>
            <h2>予約文字のエスケープ <font color="blue">オン</font></h2>
            <p>入力した文字 : <%=strEscape(sendText) %></p>
        <% }else { %>
            <h2>予約文字のエスケープ <font color="red">オフ</font></h2>
            <p>入力した文字 : <%=sendText %></p>
        <% } %>
    </body>
</html>
