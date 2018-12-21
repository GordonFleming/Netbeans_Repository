/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tickettoride;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.InputMismatchException;
import java.util.Scanner;
import static tickettoride.TicketToRidePlayer.running;

/**
 *
 * @author gordonfleming
 */
public class TicketToRideUI {
    
    public static void main(String[] args) throws IOException {
        
        //  Gets user input and writes to file  //
        
        String fileName = "TicketToRide.txt";
        FileWriter fileWriter = new FileWriter(fileName);
        PrintWriter printWriter = new PrintWriter(fileWriter);
        
        String team, longestYorN;
        int Prescore, Postscore, players, tunnels, longest;
        int count = 0;
        
        Scanner in = new Scanner (System.in);
        System.out.println("Enter the number of players: ");
        players = in.nextInt();
        printWriter.print(players+"\n");
        System.out.println("Welcome to the Ticket to ride Validator!");
        System.out.println("\nComplete the following...\n");
        
        while(players!=count){
        System.out.println("\nEnter your team name: \t");
        team = in.next();
        printWriter.print(team+"#");
        System.out.println("Enter the score on the board: \t");
        try{
        Prescore = in.nextInt();
        printWriter.print(Prescore+"#");
        }catch(InputMismatchException ex){
            System.out.println("Wrong Input");
        }
        System.out.println("Now enter the train lengths below, order doesn't matter:");
        String input;
        int inputNum;
        while(true){ 
            input = in.next();
            if(input.equalsIgnoreCase("done")||input.equalsIgnoreCase("exit")||input.equalsIgnoreCase("0")){
                break;
            } else{
                try{
                    inputNum=Integer.parseInt(input);
                    TicketToRidePlayer.Calculator(inputNum);
                } catch(NumberFormatException ex){
                    System.out.println("Wrong input");
                }
            }
        }
        int total = 0;
        total += running;
        printWriter.print(total+"#");
        System.out.println("How many stations were left?");
        tunnels = in.nextInt();
        printWriter.print(tunnels+"#");
        while(tunnels > 3){
            if(tunnels > 3){
                System.out.println("Invalid");
            }else
                System.out.println("Enter valid number (0-3)");
            tunnels = in.nextInt();
            //totTunnels += tunnels*4;
        }
        
        System.out.println("Did you get the longest train?\t(Yes / No)");
            longestYorN = in.next();
        //if(in.next().toLowerCase().equals("yes")){
          //  longest=10;
        //}else
          //  longest = 0; 
        printWriter.print(longestYorN+"\n");
        count++;
        }
        printWriter.close();
    }
}
