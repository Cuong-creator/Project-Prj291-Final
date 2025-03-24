/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Customers;

/**
 *
 * @author HungCuong
 */
@WebServlet(name = "AddControl", urlPatterns = {"/add"})
public class AddControl extends HttpServlet {

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
            // Lấy dữ liệu từ request, kiểm tra null trước khi parse
            int wid = parseIntSafe(request.getParameter("wine_id"), 0);
            String name = request.getParameter("name");
            int cate_id = parseIntSafe(request.getParameter("category_id"), 0);
            String country = request.getParameter("country");
            int year = parseIntSafe(request.getParameter("year"), 0);
            int price = parseIntSafe(request.getParameter("price"), 0);
            int stock = parseIntSafe(request.getParameter("stock_quantity"), 0);
            String image = request.getParameter("image_url");
            String description = request.getParameter("description");
            int supID = parseIntSafe(request.getParameter("supplier_ID"), 0);

            // Chèn vào database
            DAO dao = new DAO();
            dao.insertWines(wid, name, cate_id, country, year, price, stock, image, description, supID);
            response.sendRedirect("manager");
        } catch (Exception e) {
            response.getWriter().println("<h3 style='color:red;'>Lỗi hệ thống: " + e.getMessage() + "</h3>");
        }
    }

    // Phương thức để kiểm tra null và parse integer an toàn
    private int parseIntSafe(String value, int defaultValue) {
        if (value == null || value.trim().isEmpty()) {
            return defaultValue;
        }
        try {
            return Integer.parseInt(value);
        } catch (NumberFormatException e) {
            return defaultValue;
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
