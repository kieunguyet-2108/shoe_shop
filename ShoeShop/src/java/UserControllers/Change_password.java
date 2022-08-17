/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package UserControllers;

import Dal.AccountDAO;
import Models.Account;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author vietd
 */
@WebServlet(name = "Change_password", urlPatterns = {"/Change_password"})
public class Change_password extends HttpServlet {

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
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("userLogin");
        if (account == null) {
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        } else {
            request.setAttribute("actionFor", request.getParameter("actionFor"));
            request.getRequestDispatcher("Change-Password.jsp").forward(request, response);
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
        AccountDAO Adao = new AccountDAO();
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("userLogin");
        String message = "";
        String temp = "";
        try {
            String password = request.getParameter("old_password");
            String newPassword = request.getParameter("new_password");
            String cfPassword = request.getParameter("confirm_password");
            if (!account.getPassword().equals(password) || !newPassword.equals(cfPassword)) {
                temp = "fail";
                request.setAttribute("oldPass", password);
                request.setAttribute("newPass", newPassword);
                request.setAttribute("cfPass", cfPassword);
                message = "Current password or new password is not valid. Please enter again!";
            } else if (account.getPassword().equals(password) && newPassword.equals(cfPassword)) {
                temp = "success";
                message = "You have successfully changed your password";
                Adao.updatePassword(account.getEmail(), newPassword);
            }
        } catch (Exception e) {
        }
        request.setAttribute("case", temp);
        request.setAttribute("message", message);
        request.getRequestDispatcher("Public-Change-Password.jsp").forward(request, response);

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
