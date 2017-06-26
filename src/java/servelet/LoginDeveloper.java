/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servelet;

import DAO.DeveloperDAO;
import Model.Developer;
import java.io.IOException;
import java.io.PrintWriter;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Diogo Fistarol
 */
public class LoginDeveloper extends HttpServlet {

    public static String name;
    public static int idDeveloper;

    public static ObservableList<Developer> listId = FXCollections.observableArrayList();

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

        RequestDispatcher rd = request.getRequestDispatcher("mainDeveloper.jsp");
        rd.forward(request, response);

//        DeveloperDAO dd = new DeveloperDAO();
//        ObservableList<Developer> developer = dd.selectDeveloper();
//
//        if (email.equals(developer.getEmail()) && password.equals(developer.getPassword())) {
//
//            name = developer.getNameDeveloper();
//            idDeveloper = developer.getIdDeveloper();
//
//            name(request.getRemoteAddr());
//
//            System.out.println("Welcome: " + request.getRemoteAddr());
//
//            request.setAttribute("message", "Login success!");
//
//            RequestDispatcher rd = request.getRequestDispatcher("mainDeveloper.jsp");
//            rd.forward(request, response);
//
//        } else {
//            request.setAttribute("message", "<div class=\"alert alert-info alert-dismissable fade in\">\n"
//                    + "                <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\n"
//                    + "                <strong>Info!</strong> Complete all fields to log.\n"
//                    + "            </div>");
//            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
//            rd.forward(request, response);
//        }
//
//    }
//
//    public void name(String i) {
//
//        Developer dev = new Developer();
//        dev.setIdDeveloper(idDeveloper);
//        dev.setName(name);
//        listId.add(dev);
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
