/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import DAL.DAL;
import Model.City;
import Model.Developer;
import Model.Encryption;
import Model.Phone;
import Model.Photo;
import Model.PhysicalPerson;
import Model.State;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Diogo Fistarol
 */
public class RegisterDeveloper extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            System.out.println("passo");
            String imageF = (String) request.getParameter("imageFRegisterD");
            String imageC = (String) request.getParameter("imageCRegisterD");
            String nameD = (String) request.getParameter("nameRegisterD");
            String lastnameD = (String) request.getParameter("lastnameRegisterD");
            Long ageD = Long.valueOf(request.getParameter("ageRegisterD"));
            Long cpfD = Long.valueOf(request.getParameter("cpfRegisterD"));
            String emailD = (String) request.getParameter("emailRegisterD");
            String passwordD = (String) request.getParameter("passwordRegisterD");
            String passwordConfirmD = (String) request.getParameter("passwordConfirmRegisterD");
            String stateD = (String) request.getParameter("stateRegisterD");
            String cityD = (String) request.getParameter("cityRegisterD");
            Long landlineD = Long.valueOf(request.getParameter("landlineRegisterD"));
            Long mobileD = Long.valueOf(request.getParameter("mobileRegisterD"));
            String descriptionD = (String) request.getParameter("descriptionRegisterD");

            if (ageD == null || cityD.equals("") || imageC.equals("")
                    || cpfD == null || emailD.equals("") || imageF.equals("")
                    || landlineD == null || lastnameD.equals("") || mobileD == null
                    || nameD.equals("") || stateD.equals("") || descriptionD.equals("")
                    || passwordD.equals("") || passwordConfirmD.equals("")) {

//                clear();
            } else if (passwordD.equals(passwordConfirmD)) {
                DAL dal = new DAL();

                System.out.println("hdt chegou");
                
                Developer dev = new Developer();
                Phone phone = new Phone();
                PhysicalPerson physical = new PhysicalPerson();
                State state = new State();
                Photo photo = new Photo();
                City city = new City();

                phone.setLandLine(landlineD);
                phone.setMobile(mobileD);

                photo.setFace(imageF);
                photo.setCover(imageC);

                state.setNameState(stateD);
                city.setNameCity(cityD);
                state.setCity(city);

                physical.setName(nameD);
                physical.setLastName(lastnameD);
                physical.setPassword(Encryption.encrypt(passwordD));
                physical.setDescription(descriptionD);
                physical.setEmail(emailD);
                physical.setState(state);
                physical.setPhone(phone);
                physical.setPhoto(photo);

                dev.setAge(ageD);
                dev.setCpf(cpfD);
                dev.setPhysicalPerson(physical);

                dal.add(photo);
                dal.add(phone);
                dal.add(city);
                dal.add(state);
                dal.add(physical);
                dal.add(dev);

                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                rd.forward(request, response);
            }

        } catch (Exception ex){
            
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
