

<%@page contentType="text/html" pageEncoding="Shift_JIS" import="java.io.*" %>
<% request.setCharacterEncoding("Shift_JIS"); %>
<%! private String strEncode(String strVal) throws UnsupportedEncodingException {

        if (strVal == null) {
            return null;
        } else {
            return (new String(strVal.getBytes("ISO-8859-1"), "Shift_JIS"));
        }
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
        <title>好きな乗り物アンケート結果</title>
    </head>
    <body>
    <center>
        <h1 style="background:#cccccc">好きな乗り物アンケート結果</h1>

        <%
            String str = request.getParameter("vehicle");

            switch (Integer.parseInt(str)) {

                case 1:
                    out.print("<p>電車で遠出するのが好きです</p>");
                    break;
                case 5:
                    out.print("<p>自転車に乗るのが好きです</p>");
                    break;
                case 2:
                    out.print("<p>車でドライブするのが好きです</p>");
                    break;
                case 3:
                    out.print("<p>バイクでツーリングに行くのが好きです</p>");
                    break;
                case 4:
                    out.print("<p>飛行機に乗って空から地上を眺めるのが好きです</p>");
                    break;
            }
        %>
    </center>
</body>
</html>
