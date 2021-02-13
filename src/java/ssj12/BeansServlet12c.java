
package ssj12;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
/**
 *
 * @author 2180020
 */
public class BeansServlet12c extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            
            String gName = request.getParameter("name");
            int gPrice = 0;
            gPrice = Integer.parseInt(request.getParameter("price"));
            String gMemo = request.getParameter("memo");
            
            Beans agb = new Beans();
           
          
            agb.setName(gName);
            agb.setPrice(gPrice);
            agb.setMemo(gMemo);
            
            agb.execute();
            
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>è§ïiìoò^ÉTÉìÉvÉãÉvÉçÉOÉâÉÄ</title>");            
            out.println("</head>");
            out.println("<body><center>");
            out.println("<h1 style=background:#cccccc>è§ïiìoò^ÉTÉìÉvÉãÉvÉçÉOÉâÉÄ</h1>");
            out.println("<p>" + gName + " Çìoò^ÇµÇ‹ÇµÇΩ</p>");
            out.println("</center></body>");
            out.println("</html>");
        }
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
