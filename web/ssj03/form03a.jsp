

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
        <title>�D���ȏ�蕨�A���P�[�g����</title>
    </head>
    <body>
    <center>
        <h1 style="background:#cccccc">�D���ȏ�蕨�A���P�[�g����</h1>

        <%
            String str = request.getParameter("vehicle");

            switch (Integer.parseInt(str)) {

                case 1:
                    out.print("<p>�d�Ԃŉ��o����̂��D���ł�</p>");
                    break;
                case 5:
                    out.print("<p>���]�Ԃɏ��̂��D���ł�</p>");
                    break;
                case 2:
                    out.print("<p>�ԂŃh���C�u����̂��D���ł�</p>");
                    break;
                case 3:
                    out.print("<p>�o�C�N�Ńc�[�����O�ɍs���̂��D���ł�</p>");
                    break;
                case 4:
                    out.print("<p>��s�@�ɏ���ċ󂩂�n��𒭂߂�̂��D���ł�</p>");
                    break;
            }
        %>
    </center>
</body>
</html>
