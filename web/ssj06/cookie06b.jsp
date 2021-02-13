

<%@page contentType="text/html" pageEncoding="Shift_JIS" import="java.util.*" %>
<%@ include file="header.jsp" %>

<%
    String userName = "javataro";
    String password = "ecc";
    String[] strRec = {"name","pass"};
    Cookie[] cok = new Cookie[2];
    String msg = null;
    
    if(request.getParameter("check") != null){
        for(int i = 0; i < cok.length; i++){
        cok[i] = new Cookie(strRec[i],request.getParameter(strRec[i]));
        cok[i].setMaxAge(60*60*24*180);
        response.addCookie(cok[i]);
         }
        msg = "クッキー情報が保存されました";
        
    }else {
       
        for(int i = 0; i < strRec.length; i++){
        cok[i] = new Cookie(strRec[i],"");
        cok[i].setMaxAge(0);
        response.addCookie(cok[i]);
        }
        msg = "クッキーから情報を破棄しました";
    }     
    
    if(request.getParameter("name").equals(userName) && request.getParameter("pass").equals(password)) {
        out.println("<p>ようこそ " + userName + " さん</p>");
        out.println(msg);
            
    }else {
         out.println("<p><font color='red'>ユーザー名またはパスワードが違います</font></p>");
          
    }
    

           
%>

<%@include file="footer.html" %>