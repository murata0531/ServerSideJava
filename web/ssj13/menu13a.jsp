
<%@page contentType="text/html" pageEncoding="Shift_JIS"%>
<jsp:useBean id="auth" class="ssj13.AuthBean" scope="page" />

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
        <title>メニュー</title>
    </head>
    <body backcolor="#FFFFFF"><center>
        
        <%
            String inputUserName = request.getParameter("name");
            String inputPassword = request.getParameter("pass");
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
            auth.check(inputUserName, inputPassword);
            
            if(auth.getResult() == true){ %>
                
            <p>ようこそ、<%= inputUserName %>さん！</p><br><br>
            
            <p>
                <a href='ServerSideJava/ssj11/DBServlet11b'>商品一覧</a><br>
                <a href='ServerSideJava/ssj21/entry12a.jsp'>商品登録</a><br>

            </p>
            <p><%= msg %></p><br><br>
            
                
            <% } else { %>
                <p><font color="red">ユーザー名またはパスワードが違います</p>
            <% } %>
                <br><br><a href='../ssj13/index13a.jsp'>戻る</a>
    </center></body>
</html>
