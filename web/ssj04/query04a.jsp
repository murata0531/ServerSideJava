
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
        <title>���Џ��o�^</title>
    </head>
    <body>
        <h1 style="background:#cccccc">���Џ��o�^</h1>
        
        
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
                    
                    if(strEncode(strNam).equals("���Ж�") && strEncode(request.getParameter(strNam)).equals("")){
                        out.println("<p><font color='red'>���Ж����\������Ă��܂���</font></p>");
                        
                        errflg = 1;
                    }
                    
                    if(strEncode(strNam).equals("���Җ�") && strEncode(request.getParameter(strNam)).equals("")){
                        out.println("<p><font color='red'>���Җ����\������Ă��܂���</font></p>");
                        
                        errflg = 1;
                    }
                    
                    if(strEncode(strNam).equals("�o�Ŏ�") && strEncode(request.getParameter(strNam)).equals("")){
                        out.println("<p><font color='red'>�o�ŎЖ����\������Ă��܂���</font></p>");
                        
                        errflg = 1;
                    }
                    
                    if(strEncode(strNam).equals("�艿") && strEncode(request.getParameter(strNam)).equals("")){
                        
                        try{
                            Integer.parseInt(strEncode(request.getParameter(strNam)));
                            
                        }catch(NumberFormatException e){
                            out.println("<p><font color='red'>�艿�������ł͂���܂���</font></p>");
                            errflg = 1;
                        }
                       
                    }else if(strEncode(strNam).equals("�艿") && strEncode(request.getParameter(strNam)).equals("")){
                         out.println("<p><font color='red'>�艿�����͂���Ă��܂���</font></p>");
                         errflg =1;
                    }
                    
                     if(strEncode(strNam).equals("ISBN") && strEncode(request.getParameter(strNam)).equals("")){
                         
                         isbn = new String(strEncode(request.getParameter("ISBN")));
                         Pattern ptn = Pattern.compile("^ISBN[0-9]{3}\\-[0-9]{1}\\-[0-9]{3,5}\\-[0-9]{3,5}\\-[0-9X]{1}$",Pattern.CASE_INSENSITIVE);
                         Matcher mtch = ptn.matcher(isbn);
                         
                         if(!mtch.find()){
                             out.println("<p><font color='red'>ISBN�R�[�h�������������͂���Ă��܂���</font></p>");
                         }
                    }
                }     
                if(errflg == 0){
                    out.println("<p>�ȉ��̂悤�ɏ��Џ���o�^���܂���");
                }
              
            %>
        </table>   
    </body>
</html>
