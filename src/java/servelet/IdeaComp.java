/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servelet;

import Model.IdeaCompany;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Diogo Fistarol
 */
public class IdeaComp extends HttpServlet {

        List<IdeaCompany> lista = new ArrayList<IdeaCompany>();

    public List<IdeaCompany> getIdeaCompanys() {

//        lista.add(new IdeaCompany("./images/carousel3.jpg",
//                "Inova",
//                "Inovando o seculo XXI",
//                5,
//                0,
//                2));
//        
//        lista.add(new IdeaCompany("./images/carousel2.jpg",
//                "Praric",
//                "Praticando no seculo XXI",
//                1,
//                2,
//                6));
        
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
