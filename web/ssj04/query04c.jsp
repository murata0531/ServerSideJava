
<%@page contentType="text/html" pageEncoding="Shift_JIS" import="java.util.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
        <title>�N�G�������擾����</title>
    </head>
    <body>
        <h1 style="background:#cccccc">�N�G�����ꗗ</h1>
        <h3>�u���E�U��URL�\���������ɁA���L�̂悤�ȃN�G����������ɕt���čĕ\�����Ă݂悤</h3>
        <h3>(��) &name=yamada</h3>
        
        <table border="1">
            
            <%
                Enumeration enmNam=request.getParameterNames();
                
                while(enmNam.hasMoreElements()){
                    
                    String strNam=(String)(enmNam.nextElement());
                    
                    if(!request.getParameter(strNam).equals("")){
                        
                        out.println("<tr><th>" + strNam + "</th>");
                        
                        out.println("<td>" + request.getParameter(strNam) + "</td></tr>");
                    }
                }
                
            %>
        </table>
    </body>
</html>
