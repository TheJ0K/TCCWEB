/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import DAL.DAL;
import Model.IdeaCompany;
import Model.LegalPerson;
import java.io.IOException;
import java.util.List;
import java.util.Objects;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author Diogo Fistarol
 */
public class IdeaComp extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DAL dal = new DAL();
        HttpSession ses = request.getSession();

        LegalPerson legal = (LegalPerson) ses.getAttribute("leg");
        legal.getCompany().getIdCompany();

        List<IdeaCompany> ideascomp = dal.getList("IdeaCompany");
        IdeaCompany comp = new IdeaCompany();
        for (int i = 0; i < ideascomp.size(); i++) {
            if (Objects.equals(legal.getCompany().getIdCompany(), ideascomp.get(i).getCompany().getIdCompany())) {
                comp.setCompany(ideascomp.get(i).getCompany());
                HttpSession session = request.getSession();
                session.setAttribute("comp", comp);

            } else {
            }
        }
        RequestDispatcher rd = request.getRequestDispatcher("myIdeasC.jsp");
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
