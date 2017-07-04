/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import DAL.DAL;
import Model.City;
import Model.Company;
import Model.Encryption;
import Model.LegalPerson;
import Model.Phone;
import Model.Photo;
import Model.State;
import java.io.File;
import java.io.IOException;
import javafx.scene.control.Alert;
import javafx.stage.FileChooser;
import javafx.stage.Stage;
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
public class RegisterCompany extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {

            String imageF = (String) request.getParameter("imageFRegisterC");
            String imageC = (String) request.getParameter("imageCRegisterC");
            String nameC = (String) request.getParameter("nameRegisterC");
            String lastnameC = (String) request.getParameter("lastnameRegisterC");
            String nameCompanyC = (String) request.getParameter("nameCompanyRegisterC");
            Long cnpjC = Long.valueOf(request.getParameter("cnpjRegisterC"));
            String emailC = (String) request.getParameter("emailRegisterC");
            String passwordC = (String) request.getParameter("passwordRegisterC");
            String passwordConfirmC = (String) request.getParameter("passwordConfirmRegisterC");
            String stateC = (String) request.getParameter("stateRegisterC");
            String cityC = (String) request.getParameter("cityRegisterC");
            Long landlineC = Long.valueOf(request.getParameter("landlineRegisterC"));
            Long mobileC = Long.valueOf(request.getParameter("mobileRegisterC"));
            String descriptionC = (String) request.getParameter("descriptionRegisterC");

            if (nameCompanyC.equals("") || cityC.equals("") || imageC.equals("")
                    || cnpjC == null || emailC.equals("") || imageF.equals("")
                    || landlineC == null || lastnameC.equals("") || mobileC == null
                    || nameC.equals("") || stateC.equals("") || descriptionC.equals("")
                    || passwordC.equals("") || passwordConfirmC.equals("")) {

            } else if (passwordC.equals(passwordConfirmC)) {
                DAL dal = new DAL();

                Company comp = new Company();
                Phone phone = new Phone();
                LegalPerson legal = new LegalPerson();
                State state = new State();
                Photo photo = new Photo();
                City city = new City();

                phone.setLandLine(landlineC);
                phone.setMobile(mobileC);

                photo.setFace(imageF);
                photo.setCover(imageC);

                state.setNameState(stateC);
                city.setNameCity(cityC);
                state.setCity(city);

                legal.setName(nameC);
                legal.setLastName(lastnameC);
                legal.setPassword(Encryption.encrypt(passwordC));
                legal.setDescription(descriptionC);
                legal.setEmail(emailC);
                legal.setState(state);
                legal.setPhone(phone);
                legal.setPhoto(photo);

                comp.setNameCompany(nameCompanyC);
                comp.setCnpj(cnpjC);
                comp.setLegalPerson(legal);

                dal.add(photo);
                dal.add(phone);
                dal.add(city);
                dal.add(state);
                dal.add(legal);
                dal.add(comp);

                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                rd.forward(request, response);
            }

        } catch (Exception ex) {

            System.out.println("Erro: " + ex.getMessage() + "\n" + ex.getLocalizedMessage());

            request.setAttribute("message", "Erro ao cadastrar usuário!");
            request.setAttribute("css_class", "erro");

            RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
            rd.forward(request, response);

        }
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
