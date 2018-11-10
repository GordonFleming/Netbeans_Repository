/*
 * Some code:
 * By Gordon Fleming
 */
package L5_July_Exam_Practice;

import java.util.*;
/**
 *
 * @author gordonfleming
 */
public class AuthenticateTtR_V2 {
    static String team;
    static int  running = 0, Prescore, Postscore, tunnels, totTunnels, longest;
    int count=0;
    
    public AuthenticateTtR_V2(String t,  int r, int pre, int post){
        team = t;
        running = r;
        Prescore = pre;
        Postscore = post;
    }
    
    public static void Calculator(int input){
        switch (input) {
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
    }
    
    public static void main(String[] args) {
        System.out.println("Welcome to the Ticket to ride Validator!");
        System.out.println("\nComplete the following...\n");
        Scanner in = new Scanner (System.in);
        System.out.println("Enter your team name: \t");
        team = in.next();    
        System.out.println("Enter the score on the board: \t");
        Prescore = in.nextInt();
        System.out.println("Now enter the train lengths below, order doesn't matter:");
        String input;
        int inputNum;
        while(true){ 
            input = in.next();
            if(input.equalsIgnoreCase("done")||input.equalsIgnoreCase("exit")||input.equalsIgnoreCase("0")){
                break;
            } else {
                try{
                    inputNum=Integer.parseInt(input);
                    Calculator(inputNum);
                } catch(NumberFormatException ex){
                    System.out.println("Wrong input");
                }
            }
        }
        
        System.out.println("How many tunnels were left?");
        tunnels = in.nextInt();
        while(tunnels > 3){
            if(tunnels > 3){
                System.out.println("Invalid");
            }else
                System.out.println("Enter valid number (0-3)");
            tunnels = in.nextInt();
            totTunnels += tunnels*4;
        }
        
        System.out.println("Did you get the longest train?\t(Yes / No)");
        if(in.next().toLowerCase().equals("yes")){
            longest=10;
        }else
            longest = 0; 
        
        Postscore = (running+totTunnels+longest);
        
        System.out.println("Hello "+team+", \nYour score was calculated as  " + Postscore + "  compared to your prescore of  " + Prescore); 
        System.out.println("Trains total count is "+running+" and Tunnels are "+totTunnels+" plus longest "+longest);
    }
}