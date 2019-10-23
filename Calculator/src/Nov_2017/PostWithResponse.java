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
public class PostWithResponse {
    private Post post;
    private Response response [];
    public PostWithResponse(Post inPost,Response inResponse []){
        post = inPost;
        response = inResponse;
    }
    public String toString(){
        String temp = post.toString() + "\n\t\tReactions: ";
        for(int i = 0;i<response.length;i++){
            temp+="\n\t\t" + response[i].toString();
        }        
        return temp;
    }
}
