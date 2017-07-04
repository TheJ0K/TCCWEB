/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import DAL.DAL;
import Model.IdeaCompany;
import Model.IdeaDeveloper;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Diogo Fistarol
 */
public class IdeaCompChanges extends HttpServlet {

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
        String title = request.getParameter("titleChangesC");
        String imageC = request.getParameter("imageNChangesC");
        String titleN = request.getParameter("titleNChangesC");
        String description = request.getParameter("descriptionCreateC");

        try {
            DAL dal = new DAL();

            List<IdeaCompany> comps = dal.getList("IdeaCompany");

            for (int i = 0; i < comps.size(); i++) {
                if (title.equals("") || titleN.equals("") || imageC.equals("") || description.equals("")) {
                    System.out.println("ABC");
                } else if (title.equals(comps.get(i).getTitleCompanyIdea())) {
                    IdeaCompany idea = new IdeaCompany();

                    idea.setTitleCompanyIdea(titleN);
                    idea.setImageCompanyIdea(imageC);
                    idea.setDescriptionCompanyIdea(description);
                    idea.setId_ideaCompany(comps.get(i).getId_ideaCompany());
                    idea.setCompany(comps.get(i).getCompany());

                    dal.update(idea);
                }
            }
            RequestDispatcher rd = request.getRequestDispatcher("mainCompany.jsp");
            rd.forward(request, response);
        } catch (Exception e) {
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
