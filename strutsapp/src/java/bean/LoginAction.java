/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author User
 */
public class LoginAction {

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }
    String uname,error="";
    public LoginAction() {
        
    }
    
    public String execute() throws Exception {
        if ((uname==null)|| uname.equals(""))
        {error="Please enter User name....";
            return "ERROR";
        }
        return "SUCCESS";
    }
    
}
