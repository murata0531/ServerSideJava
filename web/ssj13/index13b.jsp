
<%@page contentType="text/html" pageEncoding="Shift_JIS" import="java.util.*" %>

<%
    String[] strRec = {"name","pass"};
    String[] strRst = {"",""};
    Cookie[] ck = request.getCookies();
    
    if(ck != null){
        for(int i = 0; i < strRec.length; i++){
            for(int j = 0; j < ck.length; j++){
                if(ck[j].getName().equals(strRec[i])){
                    strRst[i] = ck[j].getValue();
                    break;
                   
                }
            }
        }
    }
%>
<jsp:useBean id="auth" class="ssj13.AuthBean" scope="page" />
       
 <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=Shift_JIS">
        <title>MVC���O�C��</title>
        <meta charset="Shift_JIS">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body><center>
        
        <h1 style="background: #cccccc">������T�C�g</h1>
        
        <form method="post" action="menu13b.jsp">
            <h3><font color="blue">���O�C�����Ă�������</font></h3>
            
            <table border="0">
                <tr><td>���[�U�� : </td><td><input type="text" name="name" value="<%= strRst[0] %>"></td></tr>
                <tr><td>�p�X���[�h : </td><td><input type="password" name="pass" size="15" value="<%= strRst[1] %>"></td></tr>
                <tr><td><input type="checkbox" name="check" value="true" checked>�@�����L�^����</tr>
                <tr><td></td><td><input type="submit" value='���O�C��'></td></tr>

            </table>
        </form>
    </center></body>
</html>