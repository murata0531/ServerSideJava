
<%@page contentType="text/html" pageEncoding="Shift_JIS" import="java.net.URLDecoder" %>

<%
    String[] strRec = {"name","pass"};
    String[] strRst = {"",""};
    Cookie[] ck = request.getCookies();
    
    if(ck != null){
        for(int i = 0; i < strRec.length; i++){
            for(int j = 0; j < ck.length; j++){
                if(ck[j].getName().equals(strRec[i])){
                    strRst[i] = URLDecoder.decode(ck[j].getValue(), "Shift_JIS");
                    break;
                   
                }
            }
        }
    }
%>
<%@ include file="header.jsp" %>
<form action="cookie06a.jsp" method="post">
    <p>���[�U���ƃp�X���[�h����͂��Ă�������</p>
    <table border="0">
        <tr><td>���[�U�� : </td><td><input type="text" name="name" value="<%= strRst[0] %>"></td></tr>
        <tr><td>�p�X���[�h : </td><td><input type="password" name="pass" value="<%= strRst[1] %>"></td></tr>
        <tr><td><input type="checkbox" name="check" value="true" checked>�@�����L�^����</tr>
        <tr><td></td><td><input type="submit" name="name" value="���O�C��"></td></td></tr>
    </table>
</form>