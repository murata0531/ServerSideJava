
<%@page contentType="text/html" pageEncoding="Shift_JIS"%>
<%
    String msg1 = "商品登録";
    String msg2 = "/ServerSideJava/ssj12/BeansServlet12a";//ﾌﾟﾛｼﾞｪｸﾄ名が ServerSideJava の場合の例
    String msg3 = "商品名";
    String msg4 = "価格";
    String msg5 = "商品説明";
    String msg6 = "登録";
    String msg7 = "クリア";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
        <title><%=msg1%></title>
    </head>
    <body bgcolor="#FFFFFF">
        <center>
        <h1 style=background:#cccccc><%out.println(msg1);%></h1>
        <form action='<%=msg2%>'>
        <table border=0>
                <tr align="center" style='background:#fffffcc'><th><%=msg3%></th>
                <td><input type="text" name="name" /></td></tr>
                <tr><th><%=msg4%></th><td><input type="text" name="price" /></td></tr>
                <tr><th><%=msg5%></th><td><input type="text" name="memo" /></td></tr>
                <tr><th></th><td><input type='submit' value='<%=msg6%>' />　<input type='reset' value='<%=msg7%>' /></td></tr>
        </table><br>
        </form>
        </center>
    </body>
</html>
