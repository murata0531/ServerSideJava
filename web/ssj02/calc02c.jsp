

<%@page contentType="text/html" pageEncoding="Shift_JIS"%>

<%!
    int max = 0;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
        <title>成績評価</title>
    </head>
    <body>
        <%
          int[] point = {17, 79, 104, 70, 59, 89, 60, 69, 90, -1};
          
          int min = 100;
          
          out.println("<h1 style=background:#cccccc>成績評価</h1>");
          out.println("<h2>最高点の初期値は、" + max + "点です。</h2>");
          out.println("<h2>最低点の初期値は、" + min + "点です。</h2>");
          
          for(int num : point){
              
              out.print("<p>点数＝ " + num + " の時の評価は、");
              
              if(num > 100 || num < 0){
                  out.println("無効です。</p");
              }else {
                  if(num >= 90){
                      out.println("Ａ です。</p>");
                  }else if(num >= 80){
                      out.println("Ｂ です。</p>");
                  }else if(num >= 70){
                      out.println("Ｃ です。</p>");
                  }else if(num >= 60){
                      out.println("Ｄ です。</p>");
                  }else {
                      out.println("Ｆ です。</p>");
                  }
                  
                  if(num > max) max = num;
                  if(min < num) min = num;
                     
              }
          }
          
        out.println("<h2>今回の最高点は、" + max + "点です。</h2>");
        out.println("<h2>今回の最低点は、" + min + "点です。</h2>");
        %>
    </body>
</html>
