/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BuyAllYouCan;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.Scanner;

/**
 *
 * @author gordonfleming
 */
public class WishListManager {
    Login logArr [] = new Login[50];
    WishList wishArr [] = new WishList[200];
    int WISHsize, LOGsize = 0;
    public WishListManager() throws FileNotFoundException{
        try{Scanner scFile = new Scanner (new FileReader("logs.txt"));
        while(scFile.hasNext()){           
                String line = scFile.nextLine();
                int size=0;
                Scanner sc = new Scanner(line).useDelimiter("#");
                for(int i = 0;i<line.length();i++){
                    if(line.charAt(i)=='#'){
                        size++;
                    }
                }
                if(size==2){
                    int loginID = sc.nextInt();
                    String user = sc.next();
                    String loginPostDateTime = sc.next();
                    logArr[LOGsize]=new Login(loginID,user,loginPostDateTime);
                    LOGsize++;
                }else if(size==5){
                    int loginID = sc.nextInt();
                    String user = sc.next();
                    String loginPostDateTime = sc.next();
                    int itemCategory = sc.nextInt();
                    String itemID = sc.next();
                    String itemDescription = sc.next();
                    wishArr [WISHsize] = new WishList(loginID,user,loginPostDateTime,itemCategory,itemID,itemDescription);
                    WISHsize++;
                }                 
            }
        }catch(FileNotFoundException ex){
            System.out.println("File not found.");
        }
    }
    private LoginWishList lwArr[];

    public String combinePostsAndResponses() {
        String lString = "";
        lwArr = new LoginWishList[LOGsize];
        for (int i = 0; i < LOGsize; i++) {
            WishList tmpWArr[] = new WishList[100];
            int tempCounter = 0;
            for (int j = 0; j < WISHsize; j++) {
                if (logArr[i].getLoginID() == wishArr[j].getLoginID()) {
                    tmpWArr[tempCounter++] = wishArr[j];
                    System.out.println ("in if");
                }
            }
            WishList loginWishes[] = new WishList[tempCounter];
            System.arraycopy(tmpWArr, 0, loginWishes, 0, tempCounter);
            lwArr[i] = new LoginWishList(logArr[i].getLoginID(), logArr[i].getUser(), logArr[i].getLoginPostDateTime(), loginWishes);
            lString += lwArr[i].toString() + "\n\n";
        }
        return lString;
    }
    public String toString(){
        String temp1="";
        String temp2="";
        for(int i = 0;i<LOGsize;i++){
            temp1+=logArr[i]+"\n";
        }
        for(int j = 0;j<WISHsize;j++){
            temp2+=wishArr[j]+"\n";
        }
        return temp1+temp2;
    }
}
