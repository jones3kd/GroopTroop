/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Class to handle all user related transactions
 * 
 * @author willi8jl
 */
@WebServlet(name = "UserHandler", urlPatterns = {"/user"})
public class UserHandler extends HttpServlet {

    boolean loggedIn;
    int flagged = 0;
    /**
     * Checks userid and password to validate login
     * 
     * @param userid 
     * @param password
     * @return 
     */
    public boolean authenticate(String userid, String password) {
        boolean valid = false;
        if (password.equals("password1") && userid.equals("admin")) {
            loggedIn = true;
            valid = true;       
        }
                  
        return valid;
            
    }
    
    public void createUser(String password, String name, String email) {
        
    }
    
    public void deleteUser(String userid) {
        
    }
    
    public void logout() {
        loggedIn = false;
      
    }
    
    public void report() {
        flagged = flagged++;
    }
    
    public void update(String info) {
        
    }
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
