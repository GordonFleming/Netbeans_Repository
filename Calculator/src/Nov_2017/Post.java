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
public class Post {
    private int id;
    private String user;
    private String postContent;
    private String postDateTime;
    Post(int inID, String inPostUser, String inPostContent, String inPostDateTime){
        id=inID;
        user=inPostUser;
        postContent=inPostContent;
        postDateTime=inPostDateTime;
    }
    public int getPostID(){
        return id;
    }
    public String toString(){
        return postDateTime+" "+user+" posted: "+postContent;
    }
}
