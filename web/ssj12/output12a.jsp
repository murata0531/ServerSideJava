
<%@page contentType="text/html" pageEncoding="Shift_JIS" import="java.io.*"%>
<%!
    //���{��̑��M��������G���R�[�h���郁�\�b�h
    private String strEncode(String strVal)throws UnsupportedEncodingException{
		if(strVal==null){
			return null;
		}else{
			return (new String(strVal.getBytes("ISO-8859-1"),"Shift_JIS"));
		}
    }           
%>
<%
    String msg1 = "���i�o�^";
    String msg2 = "���i��";
    String msg3 = "���i";
    String msg4 = "���i����";
    String msg5 = "�ȉ��̏��i��o�^���܂���";
    String msg6 = "���i�o�^�ɖ߂�";
    String msg7 = "���i�ꗗ�̕\��";
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
                <tr><th><%=msg2%></th><td><%=strEncode(request.getParameter("name"))%></td></tr>
                <tr><th><%=msg3%></th><td><%=request.getParameter("price")%></td></tr>
                <tr><th><%=msg4%></th><td><%=strEncode(request.getParameter("memo"))%></td></tr>
        </table>
        <br />
        <!-- ��ۼު�Ė��� ServerSideJava �̏ꍇ�̗� -->
        <p><a href='/ServerSideJava/ssj12/entry12a.jsp' ><%=msg6%></a></p>
        <p><a href='/ServerSideJava/ssj11/DbServlet11b'  ><%=msg7%></a></p>
        </center>
    </body>
</html>
