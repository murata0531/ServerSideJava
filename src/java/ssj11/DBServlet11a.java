
package ssj11;

import java.sql.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Character.UnicodeBlock.forName;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DBServlet11a extends HttpServlet {

     Connection con = null;
     Statement stmt = null;
     ResultSet rs = null;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=Shift_JIS");
        PrintWriter out = response.getWriter();
       
         try {
             /* TODO output your page here. You may use following sample code. */
           
           
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
//            Class.forName("com.mysql.jdbc.Driver").newInstance();

           
            con = DriverManager.getConnection("jdbc:mysql://localhost/javadb?useUnicode=true&useSSL=false&characterEncoding=sjis", "root","ecc");
//            con = DriverManager.getConnection("jdbc:mysql://localhost/javadb?useUnicode=true&characterEncoding=sjis", "root","gokiburi531");
            stmt = con.createStatement();
            rs = stmt.executeQuery("SELECT * FROM goods");
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>商品一覧</title>");            
            out.println("</head>");
            out.println("<body><center>");
            out.println("<h1 style='background:#cccccc'>商品一覧</h1>");
            out.println("<table border=1>");
            out.println("<tr style='background:ffffcc'>");
            out.println("<th>商品 ID</th>");
            out.println("<th>商品名</th>");
            out.println("<th>定価</th>");
            out.println("<th>商品説明</th></tr>");
           
       
        }catch(InstantiationException | IllegalAccessException | ClassNotFoundException e) {
            System.out.println("ドライバの読み込みに失敗　：　" + e.getMessage());
        }catch(SQLException e) {
            System.out.println("SQLException caught : " + e.getMessage());
        }
        
//out.println("ssdd");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
       response.setContentType("text/html;charset=Shift_JIS");

        PrintWriter out = response.getWriter();
        
        try {
            
            rs = stmt.executeQuery("SELECT * FROM goods");
            
            while(rs.next()){
                out.println("<tr><td align='right'>" + rs.getLong("id") + "</td>");
                out.println("<td>" + rs.getString("name") + "</td>");
                out.println("<td align='right'>" + rs.getInt("price"));
                out.println("<td>" + rs.getString("memo") + "</td></tr>");
            }
            
            out.println("</table><br>");
            
            out.println("<form method='post' action='DBServlet11a'>");
            out.println("<select name='key'>");
            out.println("<option value='id' selected>商品ID</option>");
            out.println("<option value='name'>商品名</option>");
            out.println("<option value='price'>定価</option>");
            out.println("<option value='memo'>商品説明</option>");
            out.println("</select>");
            
            out.println("<input type='radio' name='order' value='asc' checked />昇順");
            out.println("<input type='radio' name='order' value='desc' />降順");
            
            out.println("<input type='submit' value='並び替え' />");
            out.println("</form></table></center></body></html>");
            
            con.close();

        }catch(SQLException e){
            
            System.out.println("SQLException caught : " + e.getMessage());

        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        response.setContentType("text/html;charset=Shift_JIS");
        
        PrintWriter out = response.getWriter();
        
        try {
            String key = request.getParameter("key");
            String order = request.getParameter("order");

            rs = stmt.executeQuery("SELECT * FROM goods order by" + key + " " + order);

            while(rs.next()){

                out.println("<tr><td align='right'>" + rs.getLong("id") + "</td>");
                out.println("<td>" + rs.getString("name") + "</td>");
                out.println("<td align='right'>" + rs.getInt("price") + "</td>");
                out.println("<td>" + rs.getString("memo") + "</td></tr>");
                
            }
            
            out.println("</table><br>");
            
            out.println("<form method='post' action='DBServlet11a'>");
            out.println("<select name='key'>");
            out.println("<option value='id' selected>商品ID</option>");
            out.println("<option value='name'>商品名</option>");
            out.println("<option value='price'>定価</option>");
            out.println("<option value='memo'>商品説明</option>");
            out.println("</select>");
            
            out.println("<input type='radio' name='order' value='asc' checked />昇順");
            out.println("<input type='radio' name='order' value='desc' />降順");
            
            out.println("<input type='submit' value='並び替え' />");
            out.println("</form></table></center></body></html>");
            
            con.close();
            
        }catch(SQLException e){
            
           System.out.println("SQLException caught : " + e.getMessage());

                        
        }
        

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
