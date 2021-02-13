
package ssj12;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class BeansServlet12b extends HttpServlet {

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
        request.setCharacterEncoding("Shift_JIS");
        response.setContentType("text/html;charset=Shift_JIS");
        try (PrintWriter out = response.getWriter()) {
            
           
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>è§ïiìoò^</title>");            
            out.println("</head>");
            out.println("<body><center>");
           
            try {
                
                String gName  = new String(request.getParameter("name"));
                String gMemo = new String(request.getParameter("memo"));
                
                if(gName.equals("")){
                    out.println("<p><font color='red'>è§ïiñºÇ™ì¸Ç¡ÇƒÇ¢Ç‹ÇπÇÒ</font></p>");
                }else {
                    int gPrice = 0;
                    gPrice = Integer.parseInt(request.getParameter("price"));
                    
                    Beans agb = new Beans();
                    
                    agb.setName(gName);
                    agb.setPrice(gPrice);
                    agb.setMemo(gMemo);
                    
                    agb.execute();
            
                    ServletContext sc = getServletContext();
                    sc.getRequestDispatcher("/ssj12/output12b.jsp").forward(request, response);
                }
            }catch(NumberFormatException e){
                 out.println("<p><font color='red'>" + e + "</font></p>");
            }catch(Exception e){
                 out.println("<p><font color='red'>è§ïiñºÇ™ì¸Ç¡ÇƒÇ¢Ç‹ÇπÇÒ</font></p>");
            }finally {
                
                out.println("<p><a href='/ServerSideJava/ssj12/entry12b.html'>ñﬂÇÈ</a></p>");
                out.println("</center></body>");
                out.println("</html>");
        }
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
