/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servelet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.IdeaDeveloper;

/**
 *
 * @author Diogo Fistarol
 */
public class IdeaDev extends HttpServlet {

    List<IdeaDeveloper> lista = new ArrayList<IdeaDeveloper>();

    public List<IdeaDeveloper> getIdeaDevelopers() {

//        lista.add(new IdeaDeveloper("./images/carousel3.jpg",
//                "Drop Idea",
//                "Descrição do projeto",
//                45,
//                10,
//                20));
//        
//        lista.add(new IdeaDeveloper("./images/carousel2.jpg",
//                "Drop",
//                "Descrição",
//                43,
//                12,
//                10));
//        
        return lista;
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

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
