/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.Package;

import controller.authorization.BaseAuthController;
import dal.hahieu.PackageDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.haha.Package;

/**
 *
 * @author LAPTOP D&N
 */
@WebServlet(name = "PackageDetail", urlPatterns = {"/PackageDetail"})
public class PackageDetail extends BaseAuthController {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet PackageDetail</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PackageDetail at " + request.getContextPath() + "</h1>");
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
    protected void processGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         PackageDBContext db = new PackageDBContext();
         int id = Integer.parseInt(request.getParameter("pid"));
         Package pc = db.getPackageByID(id);
         request.setAttribute("pc", pc);
         request.getRequestDispatcher("view/PackageDetail.jsp").forward(request, response); 
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
    protected void processPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         PackageDBContext db = new PackageDBContext();
         int package_id = Integer.parseInt(request.getParameter("package_id"));
         String package_name = request.getParameter("package_name");
         int duration = Integer.parseInt(request.getParameter("duration"));
         
         db.editPackage(package_name, duration,package_id);
         response.sendRedirect("PricePackageListServlet");
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
