

<%@page contentType="text/html" pageEncoding="Shift_JIS"%>

<%!
    int max = 0;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
        <title>���ѕ]��</title>
    </head>
    <body>
        <%
          int[] point = {17, 79, 104, 70, 59, 89, 60, 69, 90, -1};
          
          int min = 100;
          
          out.println("<h1 style=background:#cccccc>���ѕ]��</h1>");
          out.println("<h2>�ō��_�̏����l�́A" + max + "�_�ł��B</h2>");
          out.println("<h2>�Œ�_�̏����l�́A" + min + "�_�ł��B</h2>");
          
          for(int num : point){
              
              out.print("<p>�_���� " + num + " �̎��̕]���́A");
              
              if(num > 100 || num < 0){
                  out.println("�����ł��B</p");
              }else {
                  if(num >= 90){
                      out.println("�` �ł��B</p>");
                  }else if(num >= 80){
                      out.println("�a �ł��B</p>");
                  }else if(num >= 70){
                      out.println("�b �ł��B</p>");
                  }else if(num >= 60){
                      out.println("�c �ł��B</p>");
                  }else {
                      out.println("�e �ł��B</p>");
                  }
                  
                  if(num > max) max = num;
                  if(min < num) min = num;
                     
              }
          }
          
        out.println("<h2>����̍ō��_�́A" + max + "�_�ł��B</h2>");
        out.println("<h2>����̍Œ�_�́A" + min + "�_�ł��B</h2>");
        %>
    </body>
</html>
