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
        int Prescore, Postscore, players, tunnels, tunnelsTot = 0, running = 0;
        int count = 0;
        
        Scanner in = new Scanner (System.in);
        System.out.println("Enter the number of players: ");
        players = in.nextInt();
        printWriter.print(players+"\r\n");
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
                                    switch (inputNum) {
                                        case 0:
                                            break;
                                        case 1:
                                            running += 1;
                                            break;
                                        case 2:
                                            running += 2;
                                            break;
                                        case 3:
                                            running += 4;
                                            break;
                                        case 4:
                                            running += 7;
                                            break;
                                        case 6:
                                            running += 15;
                                            break;
                                        case 8:
                                            running += 21;
                                            break;
                                        default:
                                            System.out.println("Invalid statement!");
                                            break;
                                }
                    } catch(NumberFormatException ex){
                        System.out.println("Wrong input");
                    }
                }
            }
            printWriter.print(running+"#");

            System.out.println("Did you get the longest train?\t(Yes / No)");
                longestYorN = in.next();               
                printWriter.print(longestYorN+"#");                
                    if(longestYorN.toLowerCase().equals("yes")){
                        printWriter.print("10"+"#");
                    }else
                        printWriter.print("0"+"#"); 
                    
            System.out.println("How many stations were left?");
            tunnels = in.nextInt();
            printWriter.print(tunnels+"#");
                while(tunnels > 3){
                    if(tunnels > 3){
                        System.out.println("Invalid");
                    }else
                        System.out.println("Enter valid number (0-3)");
                        tunnels = in.nextInt();                   
            }
                tunnelsTot += tunnels*4;
                printWriter.print(tunnelsTot+"\r\n");
                count++;
        }       
        printWriter.close();
        System.out.println("\n< End of input >\n");   
        //  Output  //

        System.out.println("<    Output    >\n");
        TicketToRideArray player = new TicketToRideArray();
        System.out.println("Amount of players:\t" + "|\tTeam:\t\t"+ "|\tScore from board:\t" + "|\tCalculated score:\t" + "|\tNumber of stations:\t" + "|\tLongest:");
        System.out.println("--------------------------------------------------------------------------------------------------------------------------------------------------------------------");
        //sort
        System.out.println(player);
    }
}
