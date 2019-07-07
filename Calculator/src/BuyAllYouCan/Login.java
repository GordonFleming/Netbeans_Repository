/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BuyAllYouCan;

/**
 *
 * @author gordonfleming
 */
public class Login {
    private int loginID;
    private String user;
    private String loginPostDateTime;
    public Login(int loginID,String user,String loginPostDateTime){
        this.loginID=loginID;
        this.user=user;
        this.loginPostDateTime=loginPostDateTime;    
    }
    public int getLoginID() {
        return loginID;
    }
    public void setLoginID(int loginID) {
        this.loginID = loginID;
    }
    public String getUser() {
        return user;
    }
    public void setUser(String user) {
        this.user = user;
    }
    public String getLoginPostDateTime() {
        return loginPostDateTime;
    }
    public void setLoginPostDateTime(String loginPostDateTime) {
        this.loginPostDateTime = loginPostDateTime;
    }
    public String getDate() {
        String splitArr [] = loginPostDateTime.split(" ");
        return splitArr[0];
    }
    public String getTime() {
        String splitArr [] = loginPostDateTime.split(" ");
        return splitArr[1];
    }
    @Override
    public String toString(){
        return getUser() + " logged in on the " + getDate() + " at " + getTime();
    }
}
