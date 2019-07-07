/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BuyAllYouCan;

import java.io.FileNotFoundException;

/**
 *
 * @author gordonfleming
 */
public class ShopUI {
    public static void main(String[] args) throws FileNotFoundException {
        WishListManager wlm = new WishListManager();
        System.out.println(wlm);
        System.out.println(wlm.combinePostsAndResponses());
    }
}
