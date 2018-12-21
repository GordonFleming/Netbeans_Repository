/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tickettoride;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

/**
 *
 * @author gordonfleming
 */
public class TicketToRideArray {
    
    private TicketToRidePlayer [] playerArr = new TicketToRidePlayer[5];
    private int count = 0;
       
    public TicketToRideArray(){
        try{
            Scanner scFile = new Scanner (new File("TicketToRide.txt"));
            
            String line;
            int players, Prescore, Postscore, tunnels, longestTorF, stationPen, Total;
            String team, longestYorN;
                        
            players = scFile.nextInt();
            scFile.nextLine();
            
            while(scFile.hasNext()){
                line  = scFile.nextLine();
                Scanner sc = new Scanner (line).useDelimiter("#");               
                team = sc.next();
                Prescore = sc.nextInt();
                Postscore = sc.nextInt();                
                longestYorN = sc.next();
                longestTorF = sc.nextInt();
                tunnels = sc.nextInt();
                stationPen = sc.nextInt();
                playerArr [count] = new TicketToRidePlayer(players, team, Prescore, Postscore, tunnels, longestYorN, longestTorF, stationPen);
                sc.close();
                count++;
            }
            scFile.close();
        }catch (FileNotFoundException ex){
            System.out.println("File was not found, try again please.");
        }
    }
    
    public void Sort(){
        TicketToRidePlayer temp;
        for(int i = 0; i < count-1; i++){
            for(int j = i+1;j<count;j++){
                if(playerArr[i].getPostscore()-playerArr[j].getPostscore()<=0){
                    temp = playerArr[i];
                    playerArr[i] = playerArr[j];
                    playerArr[j] = temp;
                }
            }
        }
    }
    
    public String toString(){
        String temp = "";
        for(int i = 0; i < count;i++){
            temp += playerArr[i].toString() + "\n";
        }
       return temp; 
    }
}
