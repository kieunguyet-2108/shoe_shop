/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EmployeeController;

import com.google.gson.Gson;

import Dal.BrandDAO;
import Dal.CategoryDAO;
import Dal.ProductDAO;
import Dal.ProductDetailsDAO;
import Dal.SubCategoryDAO;
import Models.Brands;
import Models.Category;
import Models.Images;
import Models.Product;
import Models.ProductDetails;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author QUANG HUY
 */
@WebServlet(name = "EmployeeUpdateProducts", urlPatterns = {"/EmployeeUpdateProduct"})
public class EmployeeUpdateProduct extends HttpServlet {

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
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        int pid = Integer.parseInt(request.getParameter("pid"));
        request.setAttribute("pid", pid);
        CategoryDAO cDao = new CategoryDAO();
        BrandDAO bDao = new BrandDAO();
        SubCategoryDAO scDao = new SubCategoryDAO();
        ProductDAO pDao = new ProductDAO();
        Product product = pDao.getProductByProductId(pid);
        ArrayList<Category> categoryList = cDao.getAllCategories();
        ArrayList<Brands> brandList = bDao.getListBrands();
        request.setAttribute("scDao", scDao);
        request.setAttribute("categories", categoryList);
        request.setAttribute("brands", brandList);
        request.setAttribute("prd", product);
        ProductDetailsDAO pdDao = new ProductDetailsDAO();
        request.setAttribute("pdDao", pdDao);
        
        Gson gson = new Gson();
        ArrayList<ProductDetails> pds = pdDao.getProductDetails(pid);
        JsonArray pdsJson = gson.toJsonTree(pds).getAsJsonArray();
        request.setAttribute("pdsJ", pdsJson);
        request.getRequestDispatcher("/screens-employee/Employee_EditProduct.jsp").forward(request, response);
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
        int pid = Integer.parseInt(request.getParameter("pid"));
        request.setAttribute("pid", pid);
        String pname = request.getParameter("pname");
        String subcate = request.getParameter("subcate");
        String brand = request.getParameter("brand");
        String description = request.getParameter("description");
        String iprice = request.getParameter("iprice");
        String uprice = request.getParameter("uprice");
        ProductDAO pDao = new ProductDAO();
        pDao.updateProduct(pid, pname, subcate, brand, description, Double.parseDouble(iprice), Double.parseDouble(uprice));
        response.sendRedirect("EmployeeManageProducts");
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
