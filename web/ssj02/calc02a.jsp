

<%@page contentType="text/html" pageEncoding="Shift_JIS"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
        <title>���шꗗ�\</title>
    </head>
    <body>
        
        <%  
            out.println("<h1 style=background:#cccccc>���шꗗ�\<h1>");
        %>
        
        <table border="1">
          
            <%
               
             String[] name = {"�R�c","����","���R","���","�k�R","���","���R","����","��R","�k��"};
             int[] point = {17, 79, 104, 70, 59, 89, 60, 69, 90, -1};
             int c = 0;
             int err = 0;
             int sum = 0;
             
             out.println("<tr><th>���O</th><th>�_��</th><th>�]��</th>");
             
             
             out.println("</tr>");
             
             for(int i = 0; i < name.length; i++){
                 
                 out.println("<tr>");
                 out.println("<th width='200'><font color='red'>" + name[i] + "</font></th>");
                 
                 out.println("<th width='200'><font color='red'>" + point[i] + "</font></th>");
                 
                 out.println("<th width='200'><font color='red'>");
                 
                 c++;
                if(point[i] > 100 || point[i] < 0){
                  out.println("����</font></th>");
                  err++;
              }else {
                    
                    sum += point[i];
                    
                  if(point[i] >= 90){
                      out.println("�`</font></th>");
                  }else if(point[i] >= 80){
                      out.println("�a</font></th>");
                  }else if(point[i] >= 70){
                      out.println("�b</font></th>");
                  }else if(point[i] >= 60){
                      out.println("�c</font></th>");
                  }else {
                      out.println("�e</font></th>");
                  }
                }
             }
             
             c -= err;
             out.println("</tr>");
             out.println("<tr><th>���ϓ_</th><th>" + (sum / c) + "</th>" + "<th>(" + c + "�l��)</th>");
             
            %>
        </table>
    </body>
</html>
