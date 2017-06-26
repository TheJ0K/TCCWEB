/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servelet;

import DAO.CompanyDAO;
import Model.Company;
import java.io.IOException;
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
public class LoginCompany extends HttpServlet {

    public static String nameCompany;
    public static int idCompany;

    public static ObservableList<Company> listId = FXCollections.observableArrayList();
    
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

            RequestDispatcher rd = request.getRequestDispatcher("mainCompany.jsp");
            rd.forward(request, response);
        
//        CompanyDAO cd = new CompanyDAO();
//        ObservableList<Company> company = cd.selectCompany();
//
//        if (email.equals(company.getEmail()) && password.equals(company.getPassword())) {
//
//            nameCompany = company.getNameCompany();
//            idCompany = company.getIdCompany();
//
//
//            nameCompany(request.getRemoteAddr());
//
//            System.out.println("Welcome: " + request.getRemoteAddr());
//
//            request.setAttribute("message", "Login success!");
//
//            RequestDispatcher rd = request.getRequestDispatcher("mainCompany.jsp");
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
 
}
    public void nameCompany(String i) {

        Company comp = new Company();
        comp.setIdCompany(idCompany);
        comp.setNameCompany(nameCompany);
        listId.add(comp);

    }

//        
//        
//        Company comp = new Company();
//        
//
//        
//        if(email.equals(company.getEmail()) && password.equals(company.getPassword())){
//
//            
//        }else{
//            request.setAttribute("message", "Login realizado com sucesso!");
//                    
//            RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
//            rd.forward(request, response);
//        }        


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
