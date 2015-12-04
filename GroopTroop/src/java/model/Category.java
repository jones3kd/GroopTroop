/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Tim
 */
public class Category {
    
    String categoryname;
    String groopid;

    public String getCategoryname() {
        return categoryname;
    }

    public String getGroopid() {
        return groopid;
    }
    
    public Category(String categoryname, String groopid) {
        this.categoryname = categoryname;
        this.groopid = groopid;
    }
}
