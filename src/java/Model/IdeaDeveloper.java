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
public class IdeaDeveloper {
    private int id_ideaDeveloper;
    private String imageDeveloperIdea;
    private String titleDeveloperIdea;
    private String descriptionDeveloperIdea;
    
    private Developer id;

    public IdeaDeveloper() {
    }

    public IdeaDeveloper(int id_ideaDeveloper, String imageDeveloperIdea, String titleDeveloperIdea, String descriptionDeveloperIdea, Developer id) {
        this.id_ideaDeveloper = id_ideaDeveloper;
        this.imageDeveloperIdea = imageDeveloperIdea;
        this.titleDeveloperIdea = titleDeveloperIdea;
        this.descriptionDeveloperIdea = descriptionDeveloperIdea;
        this.id = id;
    }

    public int getId_ideaDeveloper() {
        return id_ideaDeveloper;
    }

    public void setId_ideaDeveloper(int id_ideaDeveloper) {
        this.id_ideaDeveloper = id_ideaDeveloper;
    }

    public String getImageDeveloperIdea() {
        return imageDeveloperIdea;
    }

    public void setImageDeveloperIdea(String imageDeveloperIdea) {
        this.imageDeveloperIdea = imageDeveloperIdea;
    }

    public String getTitleDeveloperIdea() {
        return titleDeveloperIdea;
    }

    public void setTitleDeveloperIdea(String titleDeveloperIdea) {
        this.titleDeveloperIdea = titleDeveloperIdea;
    }

    public String getDescriptionDeveloperIdea() {
        return descriptionDeveloperIdea;
    }

    public void setDescriptionDeveloperIdea(String descriptionDeveloperIdea) {
        this.descriptionDeveloperIdea = descriptionDeveloperIdea;
    }

    public Developer getId() {
        return id;
    }

    public void setId(Developer id) {
        this.id = id;
    }
    
    
}
