
<%@page contentType="text/html" pageEncoding="Shift_JIS" import="java.io.*"%>
<%!
    //日本語の送信文字列をエンコードするメソッド
    private String strEncode(String strVal)throws UnsupportedEncodingException{
		if(strVal==null){
			return null;
		}else{
			return (new String(strVal.getBytes("ISO-8859-1"),"Shift_JIS"));
		}
    }           
%>
<%
    String msg1 = "商品登録";
    String msg2 = "商品名";
    String msg3 = "価格";
    String msg4 = "商品説明";
    String msg5 = "以下の商品を登録しました";
    String msg6 = "商品登録に戻る";
    String msg7 = "商品一覧の表示";
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
        <!-- ﾌﾟﾛｼﾞｪｸﾄ名が ServerSideJava の場合の例 -->
        <p><a href='/ServerSideJava/ssj12/entry12a.jsp' ><%=msg6%></a></p>
        <p><a href='/ServerSideJava/ssj11/DbServlet11b'  ><%=msg7%></a></p>
        </center>
    </body>
</html>
