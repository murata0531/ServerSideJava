

<%@page contentType="text/html" pageEncoding="Shift_JIS"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
        <title>九九表(8進数)</title>
    </head>
    <body>
        
        <%  
            out.println("<h1 style=background:#cccccc>九九表(8進数)<h1>");
        %>
        
        <table border="1">
          
            <%
             out.println("<tr><th></th>");
             
             for(int i = 1; i < 8; i++){
                 out.println("<th><font color='red'>" + i + "</font></th>");
             }
             
             out.println("</tr>");
             
             for(int i = 1; i < 8; i++){
                 
                 out.println("<tr>");
                 out.println("<th width='20'><font color='red'>" + i + "</font></th>");
                 
                 for(int j = 1; j < 8; j++){
                     
                     out.println("<td align='right' width='20'>" + Integer.toOctalString(i * j) + "</td>");
                 }
             }
             
             out.println("</tr>");
            %>
        </table>
    </body>
</html>
