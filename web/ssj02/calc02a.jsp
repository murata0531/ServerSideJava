

<%@page contentType="text/html" pageEncoding="Shift_JIS"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
        <title>成績一覧表</title>
    </head>
    <body>
        
        <%  
            out.println("<h1 style=background:#cccccc>成績一覧表<h1>");
        %>
        
        <table border="1">
          
            <%
               
             String[] name = {"山田","東川","西山","南川","北山","鈴木","東山","西川","南山","北川"};
             int[] point = {17, 79, 104, 70, 59, 89, 60, 69, 90, -1};
             int c = 0;
             int err = 0;
             int sum = 0;
             
             out.println("<tr><th>名前</th><th>点数</th><th>評価</th>");
             
             
             out.println("</tr>");
             
             for(int i = 0; i < name.length; i++){
                 
                 out.println("<tr>");
                 out.println("<th width='200'><font color='red'>" + name[i] + "</font></th>");
                 
                 out.println("<th width='200'><font color='red'>" + point[i] + "</font></th>");
                 
                 out.println("<th width='200'><font color='red'>");
                 
                 c++;
                if(point[i] > 100 || point[i] < 0){
                  out.println("無効</font></th>");
                  err++;
              }else {
                    
                    sum += point[i];
                    
                  if(point[i] >= 90){
                      out.println("Ａ</font></th>");
                  }else if(point[i] >= 80){
                      out.println("Ｂ</font></th>");
                  }else if(point[i] >= 70){
                      out.println("Ｃ</font></th>");
                  }else if(point[i] >= 60){
                      out.println("Ｄ</font></th>");
                  }else {
                      out.println("Ｆ</font></th>");
                  }
                }
             }
             
             c -= err;
             out.println("</tr>");
             out.println("<tr><th>平均点</th><th>" + (sum / c) + "</th>" + "<th>(" + c + "人中)</th>");
             
            %>
        </table>
    </body>
</html>
