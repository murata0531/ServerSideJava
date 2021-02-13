
<%@page contentType="text/html" pageEncoding="Shift_JIS" import="java.util.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
        <title>クエリ情報を取得する</title>
    </head>
    <body>
        <h1 style="background:#cccccc">クエリ情報一覧</h1>
        <h3>ブラウザのURL表示欄末尾に、下記のようなクエリ情報をさらに付けて再表示してみよう</h3>
        <h3>(例) &name=yamada</h3>
        
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
