/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package swp391.controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.sql.SQLException;
import java.util.Properties;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import swp391.customer.CustomerLoginError;
import swp391.customer.CustomerDAO;
import swp391.customer.CustomerDTO;
import swp391.utils.MyApplicationConstants;

/**
 *
 * @author Chau Nhat Truong
 */
@WebServlet(name = "LoginForCheckoutServlet", urlPatterns = {"/LoginForCheckoutServlet"})
public class LoginForCheckoutServlet extends HttpServlet {

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
        ServletContext context = this.getServletContext();
        Properties siteMaps = (Properties) context.getAttribute("SITE_MAP");
        String url = siteMaps.getProperty(
                MyApplicationConstants.LoginForCheckoutServlet.LOGINFORCHECKOUT_PAGE);
        String email = request.getParameter("txtEmail");
        String password = request.getParameter("txtPassword");
        String checkLogged = request.getParameter("create-acc");
        boolean errorFound = false;
        CustomerLoginError errors = new CustomerLoginError();
        try {
            if (email.trim().length() < 1) {
                errorFound = true;
                errors.setEmailLengthError("You can't leave this empty");
            }
            if (password.trim().length() < 1) {
                errorFound = true;
                errors.setPasswordLengthError("You can't leave this empty");
            }
            if (errorFound) {
                request.setAttribute("LOGIN_ERROR", errors);
            } else {
                CustomerDAO dao = new CustomerDAO();
                CustomerDTO result = dao.checkLogin(email, password);
                if (result == null) {
                    errorFound = true;
                    errors.setLoginFail("Incorrect email or password");
                }
                if (errorFound) {
                    request.setAttribute("LOGIN_ERROR", errors);
                } else {
                    url = siteMaps.getProperty(
                            MyApplicationConstants.LoginForCheckoutServlet.SHIPPING_PAGE);

                    HttpSession session = request.getSession();
                    session.setAttribute("USER", result);
                    if (checkLogged != null) {
                        email = URLEncoder.encode(email, "UTF-8");
                        Cookie cookie = new Cookie(email, password);
                        cookie.setMaxAge(60 * 3);
                        response.addCookie(cookie);
                    }
                }
            }
        } catch (NamingException ex) {
            log("LoginForCheckoutServlet _ Naming _ " + ex.getMessage());
        } catch (SQLException ex) {
            log("LoginForCheckoutServlet _ SQL _ " + ex.getMessage());
        } finally {
            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
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
