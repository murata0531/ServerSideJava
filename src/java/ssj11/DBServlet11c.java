
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

public class DBServlet11c extends HttpServlet {

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
           
            Connection con = null;
            Statement stmt = null;
            ResultSet rs = null;
//            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            Class.forName("com.mysql.jdbc.Driver").newInstance();

           
//            con = DriverManager.getConnection("jdbc:mysql://localhost/javadb?useUnicode=true&useSSL=false&characterEncoding=sjis", "root","ecc");
            con = DriverManager.getConnection("jdbc:mysql://localhost/javadb?useUnicode=true&characterEncoding=sjis", "root","gokiburi531");
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
            out.println("<th>商品説明</th></tr><tr>");
            
            rs.next();
            
            out.print("<td align='right'>" + rs.getLong("id") + "</td>");
            out.print("<td>" + rs.getString("name") + "</td>");
            out.print("<td align='right'>" + rs.getInt("price") + "</td>");
            out.print("<td>" + rs.getString("memo") + "</td>");
            out.println("</tr>");
            out.print("</table></center>");
            out.println("</body>");
            out.println("</html>");
            
            con.close();
//            
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
