
<%@page contentType="text/html" pageEncoding="Shift_JIS" import="java.util.*,java.util.regex.*,java.io.*" %>

<%! private String strEncode(String strVal)throws UnsupportedEncodingException{
    
        if(strVal == null){
            return null;
        }else{
            return(new String(strVal.getBytes("ISO-8859-1"),"Shift_JIS"));
        }
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
        <title>書籍情報登録</title>
    </head>
    <body>
        <h1 style="background:#cccccc">書籍情報登録</h1>
        
        
        <table border="1">
            
            <%
                
                String isbn = null;
                int errflg = 0;
                
                Enumeration enmNam=request.getParameterNames();
                
                out.println("");
                
                while(enmNam.hasMoreElements()){
                    
                    String strNam=(String)(enmNam.nextElement());
                    
                    
                    out.println("<tr><th>" + strEncode(strNam) + "</th>");
                        
                    out.println("<td>" + strEncode(request.getParameter(strNam)) + "</td></tr>");
                    
                    if(strEncode(strNam).equals("書籍名") && strEncode(request.getParameter(strNam)).equals("")){
                        out.println("<p><font color='red'>書籍名が表示されていません</font></p>");
                        
                        errflg = 1;
                    }
                    
                    if(strEncode(strNam).equals("著者名") && strEncode(request.getParameter(strNam)).equals("")){
                        out.println("<p><font color='red'>著者名が表示されていません</font></p>");
                        
                        errflg = 1;
                    }
                    
                    if(strEncode(strNam).equals("出版社") && strEncode(request.getParameter(strNam)).equals("")){
                        out.println("<p><font color='red'>出版社名が表示されていません</font></p>");
                        
                        errflg = 1;
                    }
                    
                    if(strEncode(strNam).equals("定価") && strEncode(request.getParameter(strNam)).equals("")){
                        
                        try{
                            Integer.parseInt(strEncode(request.getParameter(strNam)));
                            
                        }catch(NumberFormatException e){
                            out.println("<p><font color='red'>定価が数字ではありません</font></p>");
                            errflg = 1;
                        }
                       
                    }else if(strEncode(strNam).equals("定価") && strEncode(request.getParameter(strNam)).equals("")){
                         out.println("<p><font color='red'>定価が入力されていません</font></p>");
                         errflg =1;
                    }
                    
                     if(strEncode(strNam).equals("ISBN") && strEncode(request.getParameter(strNam)).equals("")){
                         
                         isbn = new String(strEncode(request.getParameter("ISBN")));
                         Pattern ptn = Pattern.compile("^ISBN[0-9]{3}\\-[0-9]{1}\\-[0-9]{3,5}\\-[0-9]{3,5}\\-[0-9X]{1}$",Pattern.CASE_INSENSITIVE);
                         Matcher mtch = ptn.matcher(isbn);
                         
                         if(!mtch.find()){
                             out.println("<p><font color='red'>ISBNコードがが正しく入力されていません</font></p>");
                         }
                    }
                }     
                if(errflg == 0){
                    out.println("<p>以下のように書籍情報を登録しました");
                }
              
            %>
        </table>   
    </body>
</html>
