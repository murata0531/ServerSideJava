
<%@page contentType="text/html" pageEncoding="Shift_JIS"%>
<%
    String msg1 = "€io^";
    String msg2 = "/ServerSideJava/ssj12/BeansServlet12a";//ΜίΫΌήͺΈΔΌͺ ServerSideJava ΜκΜα
    String msg3 = "€iΌ";
    String msg4 = "Ώi";
    String msg5 = "€iΰΎ";
    String msg6 = "o^";
    String msg7 = "NA";
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
                <tr><th></th><td><input type='submit' value='<%=msg6%>' />@<input type='reset' value='<%=msg7%>' /></td></tr>
        </table><br>
        </form>
        </center>
    </body>
</html>
