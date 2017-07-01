/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import DAL.DAL;
import Model.Company;
import Model.IdeaCompany;
import Model.LegalPerson;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Diogo Fistarol
 */
public class IdeaCompCreate extends HttpServlet {

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
            String imageC = (String) request.getParameter("imageCreateC");
            String titleC = (String) request.getParameter("titleCreateC");
            String descriptionC = (String) request.getParameter("descriptionCreateC");

            if (imageC.equals("") || titleC.equals("") || descriptionC.equals("")) {

            } else {
                DAL dal = new DAL();

                LegalPerson legal = new LegalPerson();
                legal = (LegalPerson) request.getSession().getAttribute("leg");

                IdeaCompany idea = new IdeaCompany();

                idea.setImageCompanyIdea(imageC);
                idea.setTitleCompanyIdea(titleC);
                idea.setDescriptionCompanyIdea(descriptionC);
                idea.setCompany(legal.getCompany());

                dal.add(idea);

                RequestDispatcher rd = request.getRequestDispatcher("mainDeveloper.jsp");
                rd.forward(request, response);
            }

        } catch (Exception ex) {
            System.out.println("Erro: " + ex.getMessage() + "\n" + ex.getLocalizedMessage());

            request.setAttribute("message", "Erro ao cadastrar usuário!");
            request.setAttribute("css_class", "erro");

            RequestDispatcher rd = request.getRequestDispatcher("confIdeaDeveloper.jsp");
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
