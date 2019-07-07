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
public class LoginWishList extends Login{
    private WishList wl[];
    public LoginWishList(int login,String user,String loginPostDateTime,WishList[]w){
        super(login, user, loginPostDateTime);
        wl=w;
    }
    @Override
    public String toString(){
        String temp = super.toString()+"\nWish List:\n";
        for(int i=0;i<wl.length;i++){
            temp+="\t\t\t"+wl[i].toString()+"\n";
        }
        return temp;
    }
}
