/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import DAL.DAL;
import Model.Developer;
import Model.IdeaDeveloper;
import Model.PhysicalPerson;
import java.io.IOException;
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
public class IdeaDevCreate extends HttpServlet {

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

        System.out.println("AHHHHHHHHHHHHHHHH");

        try {
            String imageD = (String) request.getParameter("imageCreateD");
            String titleD = (String) request.getParameter("titleCreateD");
            String descriptionD = (String) request.getParameter("descriptionCreateD");

            if (imageD.equals("") || titleD.equals("") || descriptionD.equals("")) {
                System.out.println("TESTE");
            } else {
                System.out.println("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");

                PhysicalPerson phys = new PhysicalPerson();

                DAL dal = new DAL();

                phys = (PhysicalPerson) request.getSession().getAttribute("phy");

                IdeaDeveloper idea = new IdeaDeveloper();
                idea.setImageDeveloperIdea(imageD);
                idea.setTitleDeveloperIdea(titleD);
                idea.setDescriptionDeveloperIdea(descriptionD);
                idea.setDeveloper(phys.getDeveloper());

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
