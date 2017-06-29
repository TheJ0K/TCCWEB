/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import DAL.DAL;
import Model.City;
import Model.Company;
import Model.LegalPerson;
import Model.Phone;
import Model.Photo;
import Model.State;
import java.io.IOException;
import java.io.PrintWriter;
import javafx.scene.control.Alert;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Diogo Fistarol
 */
public class ChangeCompany extends HttpServlet {

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

        String imageF = (String) request.getParameter("imageFChangeC");
        String imageC = (String) request.getParameter("imageCChangeC");
        String nameC = (String) request.getParameter("nameChangeC");
        String lastnameC = (String) request.getParameter("lastnameChangeC");
        String nameCompanyC = (String) request.getParameter("nameCompanyChangeC");
        Long cnpjC = Long.valueOf(request.getParameter("cnpjChangeC"));
        String emailC = (String) request.getParameter("emailChangeC");
        String passwordC = (String) request.getParameter("passwordChangeC");
        String passwordConfirmC = (String) request.getParameter("passwordConfirmChangeC");
        String stateC = (String) request.getParameter("stateChangeC");
        String cityC = (String) request.getParameter("cityChangeC");
        Long landlineC = Long.valueOf(request.getParameter("landlineChangeC"));
        Long mobileC = Long.valueOf(request.getParameter("mobileChangeC"));
        String descriptionC = (String) request.getParameter("descriptionChangeC");

        String oldpasswordC = (String) request.getParameter("passwordC");
        String oldpasswordConfirmC = (String) request.getParameter("passwordConfirmC");

        if (nameCompanyC.equals("") || cityC.equals("") || imageC.equals("")
                || cnpjC == null || emailC.equals("")
                || imageF.equals("") || landlineC == null
                || lastnameC.equals("") || mobileC == null
                || nameC.equals("") || stateC.equals("") || descriptionC.equals("")
                || passwordC.equals("") || passwordConfirmC.equals("")
                || oldpasswordC.equals("") || oldpasswordConfirmC.equals("")) {

        } else if (passwordC.equals(passwordConfirmC) && oldpasswordC.equals(oldpasswordConfirmC)) {
            //Cria o objeto dal para chamar uasr as opções de CRUD
            DAL dal = new DAL();

            //Cria objetos de cada classe necessaria
            Company comp = new Company();
            Phone phone = new Phone();
            LegalPerson legal = new LegalPerson();
            State state = new State();
            Photo photo = new Photo();
            City city = new City();

            //Seta valores de acordo com os campos
            phone.setLandLine(landlineC);
            phone.setMobile(mobileC);

            photo.setFace(imageF);
            photo.setCover(imageC);

            state.setNameState(stateC);
            city.setNameCity(cityC);

            legal.setName(nameC);
            legal.setLastName(lastnameC);
            legal.setPassword(passwordC);
            legal.setDescription(passwordConfirmC);
            legal.setEmail(emailC);
            legal.setState(state);
            legal.setPhone(phone);
            legal.setPhoto(photo);

            comp.setNameCompany(nameCompanyC);
            comp.setCnpj(cnpjC);
            comp.setLegalPerson(legal);

            dal.update(photo);
            dal.update(phone);
            dal.update(city);
            dal.update(state);
            dal.update(legal);
            dal.update(comp);
            
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
        protected void doGet
        (HttpServletRequest request, HttpServletResponse response)
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
        protected void doPost
        (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            processRequest(request, response);
        }

        /**
         * Returns a short description of the servlet.
         *
         * @return a String containing servlet description
         */
        @Override
        public String getServletInfo
        
        
        
            () {
        return "Short description";
        }// </editor-fold>

    }
