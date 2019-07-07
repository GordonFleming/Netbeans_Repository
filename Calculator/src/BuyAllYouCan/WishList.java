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
public class WishList {
    private int loginID, itemCategory;
    private String loginPostDateTime,user,itemID,itemDescription;
    static final int CATCOMPUTERS = 1;
    static final int CATPHOTOGRAPHY = 2;
    static final int CATSECURITY = 3;
    public WishList(int ID, String user, String loginPostDateTime, int itemCategory, String itemID, String itemDescription){
        this.itemCategory=itemCategory;
        this.loginID=ID;
        this.itemDescription=itemDescription;
        this.itemID=itemID;
        this.loginPostDateTime=loginPostDateTime;
        this.user=user;
    }
    public int getLoginID() {
        return loginID;
    }
    public void setLoginID(int loginID) {
        this.loginID = loginID;
    }
    public int getItemCategory() {
        return itemCategory;
    }
    public void setItemCategory(int itemCategory) {
        this.itemCategory = itemCategory;
    }
    public String getLoginPostDateTime() {
        return loginPostDateTime;
    }
    public void setLoginPostDateTime(String loginPostDateTime) {
        this.loginPostDateTime = loginPostDateTime;
    }
    public String getUser() {
        return user;
    }
    public void setUser(String user) {
        this.user = user;
    }
    public String getItemID() {
        return itemID;
    }
    public void setItemID(String itemID) {
        this.itemID = itemID;
    }
    public String getItemDescription() {
        return itemDescription;
    }
    public void setItemDescription(String itemDescription) {
        this.itemDescription = itemDescription;
    }  
    public String getCategoryType(){
        switch(itemCategory){
            case CATCOMPUTERS: return "Category: Computers";
            case CATPHOTOGRAPHY: return "Category: Photography";
            case CATSECURITY: return "Category: Security";
            default:return"";
        }
    }
    @Override
    public String toString(){
        return getCategoryType()+"\n"+getUser()+" added "+getItemDescription()+" Item Code: "+getItemID()+" at "+getLoginPostDateTime();
    }
}
