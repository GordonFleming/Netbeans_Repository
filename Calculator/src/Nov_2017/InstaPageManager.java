/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Nov_2017;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

/**
 *
 * @author flemi
 */
public class InstaPageManager {
    private Post postArr [] = new Post[100];
    private Response resArr [] = new Response[500];
    private int countPost = 0;
    private int countResponse = 0;
    
    public InstaPageManager(){
        try{
        Scanner scFile = new Scanner(new File("insta.txt"));        
        String line; int count = 0;
        while(scFile.hasNextLine()){
            line = scFile.nextLine();
            Scanner sc = new Scanner (line).useDelimiter("#");
            
            int id = sc.nextInt();
            String user = sc.next();
            String content = sc.next();
            String DateTime = sc.next();
            if(sc.hasNext()){
                int responseType = sc.nextInt();
                resArr[countResponse] = new Response(id,user,content,DateTime,responseType);
                countResponse++;
            }else{
                postArr [countPost] = new Post(id,user,content,DateTime);
                countPost++;
            }
        }
        scFile.close();
        }catch(FileNotFoundException ex){
            System.out.println("File could not be found.");
        }
    }
    public String getAllPosts(){
        String temp ="";
        for(int i = 0;i<countPost;i++){
            temp += postArr[i].toString() +"\n";
        }
        return temp;
    }
    private PostWithResponse pArr[];
    public String combinePostWithResponse(){
        String temp="";
        pArr = new PostWithResponse[countPost];
        for(int i = 0;i<countPost;i++){
            Response tmpRes[] = new Response[100];
            int tmpcount = 0;
            for(int j=0;j<countResponse;j++){
                if(postArr[i].getPostID() == resArr[i].getPostID()){
                    tmpRes[tmpcount++] = resArr[j];
                }
            }
            Response postResponses[] = new Response[tmpcount];
            System.arraycopy(tmpRes, 0, postResponses, 0, tmpcount);
            pArr[i] = new PostWithResponse(postArr[i],postResponses);
            temp+=pArr[i].toString()+"\n\n";
        }
        return temp;
    }
}
