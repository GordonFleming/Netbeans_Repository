/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tickettoride;

/**
 *
 * @author gordonfleming
 */
public class TicketToRidePlayer {
    
    static String team;
    static int  running = 0, players, Prescore, Postscore, tunnels, totTunnels, longest;
    static int count = 0;
    public TicketToRidePlayer(int players, String t,  int r, int pre, int post){
        this.players = players;
        this.team = t;
        this.running = r;
        this.Prescore = pre;
        this.Postscore = post;
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
        
        public int longest(int longest){
                
            return longest;
        }
}
