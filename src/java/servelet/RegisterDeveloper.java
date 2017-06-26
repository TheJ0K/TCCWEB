/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servelet;

import DAO.CityDAO;
import DAO.DeveloperDAO;
import DAO.PhoneDAO;
import DAO.PhysicalPersonDAO;
import DAO.StateDAO;
import Model.City;
import Model.Developer;
import Model.Phone;
import Model.PhysicalPerson;
import Model.State;
import java.io.IOException;
import java.sql.Date;
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
        String nameD = (String) request.getParameter("nameRegisterD");
        String lastnameD = (String) request.getParameter("lastnameRegisterD");
        Date ageD = Date.valueOf(request.getParameter("ageRegisterD"));
        Integer cpfD = Integer.valueOf(request.getParameter("cpfRegisterD"));
        String emailD = (String) request.getParameter("emailRegisterD");
        String passwordD = (String) request.getParameter("passwordRegisterD");
        String passwordConfirmD = (String) request.getParameter("passwordConfirmRegisterD");
        String stateD = (String) request.getParameter("stateRegisterD");
        String cityD = (String) request.getParameter("cityRegisterD");
        Integer landlineD = Integer.valueOf(request.getParameter("landlineRegisterD"));
        Integer mobileD = Integer.valueOf(request.getParameter("mobileRegisterD"));
        
        if(passwordD.equals(passwordConfirmD)){
            
        PhysicalPerson physical = new PhysicalPerson();
        PhysicalPersonDAO pp = new PhysicalPersonDAO();
        
        Developer dev = new Developer();
        DeveloperDAO dd = new DeveloperDAO();
        
        State state = new State();
        StateDAO s = new StateDAO();
        
        City city = new City();
        CityDAO c = new CityDAO();
        
        PhoneDAO pd = new PhoneDAO();
        Phone phone = new Phone();

        
        physical.setName(nameD);
        physical.setLastName(lastnameD);

        dev.setAge(ageD);
        dev.setCpf(cpfD);
        
        physical.setEmail(emailD);
        physical.setPassword(passwordD);
        
        state.setNameState(stateD);
        city.setNameCity(cityD);
                
        phone.setLandLine(landlineD);
        phone.setMobile(mobileD);

        dd.addDeveloper(dev);
        pp.addPhysicalPerson(physical);
        pd.addPhone(phone);
//        p.addPhoto(photo);
        c.addCity(city);
        s.addState(state);
        
//        PhotoDAO p = new PhotoDAO();
//        Photo photo = new Photo();
//        photo.setFace(tfFace.getText());
//        photo.setCover(tfCover.getText());
        
//        legal.setDescription(taDescription.getText());
        
        }else{
            request.setAttribute("message", "Erro ao cadastrar usuário!");
            request.setAttribute("css_class", "erro");

            RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
            rd.forward(request, response);

        }
        
        } catch (Exception e) {
            
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
