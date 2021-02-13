
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
        <title>�G���R�[�h����</title>
    </head>
    <body>
        <h1 style="background: #cccccc">�G���R�[�h����</h1>
        
        <%
            String sendText = request.getParameter("text");
            boolean flg = false, flg2 = false;
            
            flg = new Boolean(request.getParameter("esc")).booleanValue();
            flg2 = new Boolean(request.getParameter("enc")).booleanValue();
        %>
        
        <%
            if(flg){ 
               if(flg2){
               
                   out.println("<h2>�\�񕶎��̃G�X�P�[�v <font color='blue'>�I��</font></h2>");
                   out.println("<h2>���{��̃G���R�[�h <font color='blue'>�I��</font></h2>");
                   out.println("<p>���͂������� : " + strEncode(strEscape(sendText)) + "</p>");
                   
               } else {
                   out.println("<h2>�\�񕶎��̃G�X�P�[�v <font color='blue'>�I��</font></h2>");
                   out.println("<h2>���{��̃G���R�[�h <font color='red'>�I�t</font></h2>");
                   out.println("<p>���͂������� : " + strEscape(sendText) + "</p>");
               }
            }else{
                out.println("<h2>�\�񕶎��̃G�X�P�[�v <font color='red'>�I�t</font></h2>");
                out.println("<h2>���{��̃G���R�[�h <font color='red'>�I�t</font></h2>");
                out.println("<p>���͂������� : " + sendText + "</p>");
            }
        %>
        
    </body>
</html>
