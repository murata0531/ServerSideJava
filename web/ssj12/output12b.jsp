
<%@page contentType="text/html" pageEncoding="Shift_JIS"%>
<%
    String msg1 = "€io^";
    String msg2 = "€iΌ";
    String msg3 = "Ώi";
    String msg4 = "€iΰΎ";
    String msg5 = "ΘΊΜ€iπo^΅ά΅½";
    String msg6 = "€io^Ιίι";
    String msg7 = "€iκΜ\¦";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
        <title><%=msg1%></title>
    </head>
    <body bgcolor="#FFFFFF"><center>
        <h1 style=background:#cccccc><%=msg1%></h1>
        <p><%=msg5%></p>
        <table border=1>
                <tr><th><%=msg2%></th><td><%=request.getParameter("name")%></td></tr>
                <tr><th><%=msg3%></th><td><%=request.getParameter("price")%></td></tr>
                <tr><th><%=msg4%></th><td><%=request.getParameter("memo")%></td></tr>
        </table>
        <br />
        <!-- ΜίΫΌήͺΈΔΌͺ ServerSideJava ΜκΜα -->
        <p><a href='/ServerSideJava/ssj12/entry12b.html' ><%=msg6%></a></p>
        <p><a href='/ServerSideJava/ssj11/DbServlet11b'  ><%=msg7%></a></p>
        </center>
    </body>
</html>
