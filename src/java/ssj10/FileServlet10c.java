
package ssj10;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.StringTokenizer;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class FileServlet10c extends HttpServlet {

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
            out.println("<title>ファイルを用いたログイン認証</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<form method='post' action='FileServlet10c'>");
            out.println("<h3>ログイン</h3>");
            out.println("<table><tr><td>ユーザ名</td>");
            out.println("<td><input type='text' name='name'></td></tr>");
            out.println("<tr><td>パスワード</td>");
            out.println("<td><input type='password' name='pass'></td></tr>");
            out.println("<tr><td><input type='submit' value='ログイン'></td><td></td></table></tr>");
            out.println("</form>");
            out.println("</body>");
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
        
        response.setContentType("text/html;charset=Shift_JIS");
        request.setCharacterEncoding("Shift_JIS");
        
       try(PrintWriter out = response.getWriter()){
           
            String inputUserName = request.getParameter("name");
            String inputPassword = request.getParameter("pass");

            if(inputUserName.equals("") || inputPassword.equals("")){
                out.println("<FONT COLOR=RED>空欄があります</FONT>");
                processRequest(request,response);
            }else if(authentication(inputUserName,inputPassword)) {
                    
                HttpSession session = request.getSession();

                session.setAttribute("username",inputUserName);

                ServletContext sc = getServletContext();
                sc.getRequestDispatcher("/ssj10/FileServlet10b").forward(request, response);

             }else {
                    
                out.println("<FONT COLOR=RED>正しいユーザ名とパスワードを入力してください<?FONT>");
                    
                processRequest(request,response);
            }

                
        }
        
        
    }
    
    
    public boolean authentication(String name, String pass) throws IOException {
        
        ServletContext sc = getServletConfig().getServletContext();
        
        FileReader fr = new FileReader(sc.getRealPath("user.dat"));
        
        BufferedReader br = new BufferedReader(fr);
        
        StringTokenizer tkn;
        
        boolean flg = false;
        
        while(br.ready()){
            
            tkn = new StringTokenizer(br.readLine(),",");
        
        
            if(tkn.nextToken().equals(name) && tkn.nextToken().equals(pass)){
                flg = true;
            }
        }
        br.close();
        return flg;
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
