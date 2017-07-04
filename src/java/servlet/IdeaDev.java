/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import DAL.DAL;
import Model.IdeaDeveloper;
import Model.PhysicalPerson;
import java.io.IOException;
import java.util.List;
import java.util.Objects;
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
public class IdeaDev extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DAL dal = new DAL();
        HttpSession ses = request.getSession();

        PhysicalPerson physical = (PhysicalPerson) ses.getAttribute("phy");
        physical.getDeveloper().getIddeveloper();

        List<IdeaDeveloper> ideasdev = dal.getList("IdeaDeveloper");
        IdeaDeveloper dev = new IdeaDeveloper();
        for (int i = 0; i < ideasdev.size(); i++) {
            if (Objects.equals(physical.getDeveloper().getIddeveloper(), ideasdev.get(i).getDeveloper().getIddeveloper())) {
                dev.setDeveloper(ideasdev.get(i).getDeveloper());
                HttpSession session = request.getSession();
                session.setAttribute("dev", dev);

            } else {
            }
        }
        RequestDispatcher rd = request.getRequestDispatcher("myIdeasD.jsp");
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
