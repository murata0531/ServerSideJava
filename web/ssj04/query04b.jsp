
<%@page contentType="text/html" pageEncoding="Shift_JIS" import="java.util.*,java.io.*" %>

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
        <title>会員情報登録</title>
    </head>
    <body>
        <h1 style="background:#cccccc">会員情報登録</h1>
        
        <table border="1">
            
            <%
                Enumeration enmNam=request.getParameterNames();
                
                while(enmNam.hasMoreElements()){
                    
                    String strNam=(String)(enmNam.nextElement());
                    
                    
                    out.println("<tr><th>" + strEncode(strNam) + "</th>");
                        
                    out.println("<td>" + strEncode(request.getParameter(strNam)) + "</td></tr>");
                    
                }
              
            %>
        </table>
        
        <% out.println("<p>以上のように会員情報を登録しました</p>"); %>
            
    </body>
</html>
