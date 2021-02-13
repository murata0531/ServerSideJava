
<%@page contentType="text/html" pageEncoding="Shift_JIS" import="java.util.*,java.io.*" %>

<%! private String strEncode(String strVal)throws UnsupportedEncodingException{
    
        if(strVal == null){
            return null;
        }else{
            return(new String(strVal.getBytes("ISO-8859-1"),"Shift_JIS"));
        }
    }
%>

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
        <title>エンコード処理</title>
    </head>
    <body>
        <h1 style="background: #cccccc">エンコード処理</h1>
        
        <%
            String sendText = request.getParameter("text");
            boolean flg = false, flg2 = false;
            
            flg = new Boolean(request.getParameter("esc")).booleanValue();
            flg2 = new Boolean(request.getParameter("enc")).booleanValue();
        %>
        
        <%
            if(flg){ 
               if(flg2){
               
                   out.println("<h2>予約文字のエスケープ <font color='blue'>オン</font></h2>");
                   out.println("<h2>日本語のエンコード <font color='blue'>オン</font></h2>");
                   out.println("<p>入力した文字 : " + strEncode(strEscape(sendText)) + "</p>");
                   
               } else {
                   out.println("<h2>予約文字のエスケープ <font color='blue'>オン</font></h2>");
                   out.println("<h2>日本語のエンコード <font color='red'>オフ</font></h2>");
                   out.println("<p>入力した文字 : " + strEscape(sendText) + "</p>");
               }
            }else{
                out.println("<h2>予約文字のエスケープ <font color='red'>オフ</font></h2>");
                out.println("<h2>日本語のエンコード <font color='red'>オフ</font></h2>");
                out.println("<p>入力した文字 : " + sendText + "</p>");
            }
        %>
        
    </body>
</html>
