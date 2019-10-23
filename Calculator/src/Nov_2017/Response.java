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
public class Response {
    private int postID;
    private String user;
    private String comment;
    private String responseDateTime;
    private int responseType;
    
    public static final int RESPONSE_LIKE = 1;
    public static final int RESPONSE_COMMENT = 2;
    public static final int RESPONSE_DISLIKE = 3;
    public static final int RESPONSE_LOVE = 4;
    
    public Response(int inPostID,String inUser,String inComment, String inResponseDateTime, int inResponseType){
        postID=inPostID;
        user=inUser;
        comment=inComment;
        responseDateTime=inResponseDateTime;
        responseType=inResponseType;
    }
    private String getReactionType(){
        switch(responseType){
            case RESPONSE_LIKE: return "Like";
            case RESPONSE_COMMENT: return "commented";
            case RESPONSE_DISLIKE: return "dislike";
            case RESPONSE_LOVE: return "loved";
            default: return "";
        }
    }
    public int getPostID(){
        return postID;       
    }
    public String toString(){
        String temp = responseDateTime+"\t"+user+" "+getReactionType();
        if(responseType==RESPONSE_COMMENT){
            return temp + " on this post: " + comment;
        }else{
            return temp + " this post";    
        }
    }
}
