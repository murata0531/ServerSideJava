
package ssj12;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
/**
 *
 * @author 2180020
 */
public class BeansServlet12a extends HttpServlet {

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
            
           
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>���i�o�^</title>");            
            out.println("</head>");
            out.println("<body><center>");
           
            try {
                
                String gName  = new String(request.getParameter("name").getBytes("ISO-8859-1"),"Shift_JIS");
                String gMemo = new String(request.getParameter("memo").getBytes("ISO-8859-1"),"Shift_JIS");
                
                if(gName.equals("")){
                    out.println("<p><font color='red'>���i���������Ă��܂���</font></p>");
                }else {
                    int gPrice = 0;
                    gPrice = Integer.parseInt(request.getParameter("price"));
                    
                    Beans12a agb = new Beans12a();
                    
                    agb.setName(gName);
                    agb.setPrice(gPrice);
                    agb.setMemo(gMemo);
                    
                    
                    if(agb.execute() > 0){
                        ServletContext sc = getServletContext();
                        sc.getRequestDispatcher("/ssj12/output12a.jsp").forward(request, response);
                    }
                    
                    
                }
            }catch(NumberFormatException e){
                 out.println("<p><font color='red'>" + e + "</font></p>");
            }catch(Exception e){
                 out.println("<p><font color='red'>���i���������Ă��܂���</font></p>");
            }finally {
                
                out.println("<p><a href='/ServerSideJava/ssj12/entry12a.jsp'>�߂�</a></p>");
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
