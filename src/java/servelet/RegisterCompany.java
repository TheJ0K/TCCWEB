/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servelet;


import DAO.CityDAO;
import DAO.CompanyDAO;
import DAO.LegalPersonDAO;
import DAO.PhoneDAO;
import DAO.StateDAO;
import Model.City;
import Model.Company;
import Model.LegalPerson;
import Model.Phone;
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
public class RegisterCompany extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
        String nameC = (String) request.getParameter("nameRegisterC");
        String lastnameC = (String) request.getParameter("lastnameRegisterC");
        String nameCompanyC = (String) request.getParameter("nameCompanyRegisterC");
        Integer cnpjC = Integer.valueOf(request.getParameter("cnpjRegisterC"));
        String emailC = (String) request.getParameter("emailRegisterC");
        String passwordC = (String) request.getParameter("passwordRegisterC");
        String passwordConfirmC = (String) request.getParameter("passwordConfirmRegisterC");
        String stateC = (String) request.getParameter("stateRegisterC");
        String cityC = (String) request.getParameter("cityRegisterC");
        Integer landlineC = Integer.valueOf(request.getParameter("landlineRegisterC"));
        Integer mobileC = Integer.valueOf(request.getParameter("mobileRegisterC"));
        
        if(passwordC.equals(passwordConfirmC)){
            
        LegalPerson legal = new LegalPerson();
        LegalPersonDAO lp = new LegalPersonDAO();
        Company comp = new Company();
        CompanyDAO cd = new CompanyDAO();
        
        State state = new State();
        StateDAO s = new StateDAO();
        City city = new City();
        CityDAO c = new CityDAO();
        
        PhoneDAO pd = new PhoneDAO();
        Phone phone = new Phone();

        
        legal.setName(nameC);
        legal.setLastName(lastnameC);

        comp.setNameCompany(nameCompanyC);
        comp.setCnpj(cnpjC);
        
        legal.setEmail(emailC);
        legal.setPassword(passwordC);
        
        state.setNameState(stateC);
        city.setNameCity(cityC);
                
        phone.setLandLine(landlineC);
        phone.setMobile(mobileC);

        cd.addCompany(comp);
        lp.addLegal(legal);
        pd.addPhone(phone);
//        p.addPhoto(photo);
        c.addCity(city);
        s.addState(state);
        
//        PhotoDAO p = new PhotoDAO();
//        Photo photo = new Photo();
//        photo.setFace(tfFace.getText());
//        photo.setCover(tfCover.getText());
        
//        legal.setDescription(taDescription.getText());
        
        RequestDispatcher rd = request.getRequestDispatcher("main.jsp");       

        }else{
                request.setAttribute("message", "Erro ao cadastrar usuário!");
                request.setAttribute("css_class", "erro");
                
                RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
                rd.forward(request, response);
                
            }
        
        } catch (Exception ex) {
           System.out.println("Erro:" + ex);
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
