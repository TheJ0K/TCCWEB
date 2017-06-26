/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import javax.persistence.*;
//import org.hibernate.annotations.FetchMode;
//import org.hibernate.annotations.Fetch;

/**
 *
 * @author tiago
 */
@Entity
@Table
public class LegalPerson extends Person {

    /*@OneToOne(mappedBy = "legalPerson", fetch = FetchType.EAGER)
    @Fetch(FetchMode.JOIN)
    @JoinColumn(name = "idPessoa")
    private Phone phone;*/
    @OneToOne(mappedBy = "legalPerson", fetch = FetchType.EAGER)
    @JoinColumn(name = "idPhone")
    private Phone phone;
    
    @OneToOne
    @JoinColumn(name="idPessoa")
    private Company idcompany;

    /*@OneToOne(mappedBy = "legalPerson", fetch = FetchType.EAGER)
    @JoinColumn(name = "legalPerson")
    private Photo photo;

    @OneToOne(mappedBy = "legalPerson", fetch = FetchType.EAGER)
    @JoinColumn(name = "legalPerson")
    private State state;*/

 /*public Photo getPhoto() {
        return photo;
    }

    public void setPhoto(Photo photo) {
        this.photo = photo;
    }

    public State getState() {
        return state;
    }

    public void setState(State state) {
        this.state = state;
    }*/
    public Phone getPhone() {
        return phone;
    }

    public void setPhone(Phone phone) {
        this.phone = phone;
    }

    public LegalPerson() {
    }

}
