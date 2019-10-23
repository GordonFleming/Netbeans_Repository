/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Nov_2017;

/**
 *
 * @author flemi
 */
public class InstaPageUI {
    public static void main(String[] args) {
        InstaPageManager m = new InstaPageManager();
        System.out.println(m.getAllPosts());
        System.out.println(m.combinePostWithResponse());
    }
}
