/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EmployeeController;

import Dal.BrandDAO;
import Dal.CategoryDAO;
import Dal.ProductDAO;
import Dal.ProductDetailsDAO;
import Dal.SubCategoryDAO;
import Models.Category;
import Models.Product;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author QUANG HUY
 */
@WebServlet(name = "EmployeeManageProducts", urlPatterns = {"/EmployeeManageProducts"})
public class EmployeeManageProducts extends HttpServlet {

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
        ProductDAO pDao = new ProductDAO();
        CategoryDAO cDao = new CategoryDAO();
        SubCategoryDAO scDao = new SubCategoryDAO();
        BrandDAO bDao = new BrandDAO();
        ProductDetailsDAO pdDao = new ProductDetailsDAO();
        List<Product> productsList = pDao.getListProducts();
        List<Category> categoriesList = cDao.getAllCategories();
        request.setAttribute("scDao", scDao);
        request.setAttribute("cDao", cDao);
        request.setAttribute("bDao", bDao);
        request.setAttribute("pdDao", pdDao);
        
        request.setAttribute("pList", productsList);
        request.setAttribute("categories", categoriesList);
        request.setAttribute("brands", bDao.getListBrands());
        
        request.getRequestDispatcher("/screens-employee/Employee_ManageProducts.jsp").forward(request, response);
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
