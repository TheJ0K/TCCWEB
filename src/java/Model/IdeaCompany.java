/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Diogo Fistarol
 */
public class IdeaCompany {
    private int id_ideaCompany;
    private String imageCompanyIdea;
    private String titleCompanyIdea;
    private String descriptionCompanyIdea;
    
    private Company idCompany;

    public IdeaCompany() {
    }

    public IdeaCompany(int id_ideaCompany, String imageCompanyIdea, String titleCompanyIdea, String descriptionCompanyIdea, Company idCompany) {
        this.id_ideaCompany = id_ideaCompany;
        this.imageCompanyIdea = imageCompanyIdea;
        this.titleCompanyIdea = titleCompanyIdea;
        this.descriptionCompanyIdea = descriptionCompanyIdea;
        this.idCompany = idCompany;
    }

    public int getId_ideaCompany() {
        return id_ideaCompany;
    }

    public void setId_ideaCompany(int id_ideaCompany) {
        this.id_ideaCompany = id_ideaCompany;
    }

    public String getImageCompanyIdea() {
        return imageCompanyIdea;
    }

    public void setImageCompanyIdea(String imageCompanyIdea) {
        this.imageCompanyIdea = imageCompanyIdea;
    }

    public String getTitleCompanyIdea() {
        return titleCompanyIdea;
    }

    public void setTitleCompanyIdea(String titleCompanyIdea) {
        this.titleCompanyIdea = titleCompanyIdea;
    }

    public String getDescriptionCompanyIdea() {
        return descriptionCompanyIdea;
    }

    public void setDescriptionCompanyIdea(String descriptionCompanyIdea) {
        this.descriptionCompanyIdea = descriptionCompanyIdea;
    }

    public Company getIdCompany() {
        return idCompany;
    }

    public void setIdCompany(Company idCompany) {
        this.idCompany = idCompany;
    }
    
    
}
