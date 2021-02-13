
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

<%!
    private String strCRLT(String strEsc){
        
        String strResult = strEsc.replace(System.getProperty("line.separator"),"<br>");

        return strResult;
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
        <title>エスケープ処理&改行文字の反映</title>
    </head>
    <body>
        <h1 style="background: #cccccc">エスケープ処理&改行文字の反映</h1>
        
        <table border="1">
            
            <%= strCRLT(strEncode(strEscape(request.getParameter("esc")))) %>
        </table>
        
    </body>
</html>
