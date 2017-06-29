/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import DAL.DAL;
import Model.Developer;
import Model.PhysicalPerson;
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
public class LoginDeveloper extends HttpServlet {

    public static Developer deve;

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
        try {
            String email = request.getParameter("emailLogin");
            String password = request.getParameter("passwordLogin");

            DAL dal = new DAL();
            List<PhysicalPerson> phys = dal.getList("PhysicalPerson");

            for (PhysicalPerson phy : phys) {
                System.out.println(phy);
            }

            String page = "login.jsp";

            for (PhysicalPerson phy : phys) {
                if (phy.getEmail().equals(email) && phy.getPassword().equals(password)) {
                    page = "mainDeveloper.jsp";

                    HttpSession session = request.getSession();
                    session.setAttribute("phy", phy);
                    break;
                } else {
                    request.setAttribute("message", "<div class=\"alert alert-info alert-dismissable fade in\">\n"
                            + "                <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\n"
                            + "                <strong>Info!</strong> Complete all fields to log.\n"
                            + "            </div>");
                    RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                    rd.forward(request, response);
                }
            }

            RequestDispatcher rd = request.getRequestDispatcher(page);
            rd.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }

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
