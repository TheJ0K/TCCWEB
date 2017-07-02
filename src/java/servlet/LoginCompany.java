/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import DAL.DAL;
import Model.Company;
import Model.Encryption;
import Model.LegalPerson;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Diogo Fistarol
 */
public class LoginCompany extends HttpServlet {

    public static String name;

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

        String email = request.getParameter("emailLogin");
        String password = request.getParameter("passwordLogin");

        DAL dal = new DAL();
        List<LegalPerson> legs = dal.getList("LegalPerson");

        for (LegalPerson leg : legs) {
            System.out.println(leg);
        }

        DAL dal = new DAL();
        List<LegalPerson> legs = dal.getList("LegalPerson");

        for (LegalPerson leg : legs) {
            System.out.println(leg);
        }

        String page = "login.jsp";
        String message = "<div class=\"alert alert-info alert-dismissable fade in\">\n"
                + "                <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\n"
                + "                <strong>Info!</strong> Complete all fields to log.\n"
                + "            </div>";

        String pass = Encryption.encrypt(password);

        for (LegalPerson leg : legs) {
            if (email.equals(leg.getEmail()) && pass.equals(leg.getPassword())) {
                page = "mainCompany.jsp";
                message = "";

                HttpSession session = request.getSession();
                session.setAttribute("leg", leg);

            }
        }

        request.setAttribute("message", message);

        RequestDispatcher rd = request.getRequestDispatcher(page);
        rd.forward(request, response);

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
