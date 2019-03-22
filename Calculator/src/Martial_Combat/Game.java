package Martial_Combat;

import java.util.Scanner;

/**
 *
 * @author Gordon Fleming (24740)
 */
public class Game {
    public static void main(String[] args) {           
        System.out.println("Welcome to Martial Combat Game:");
        System.out.println("Enter 1 to fight a training dummy, 2 to fight a Monster and 3 to exit the program.");
        Scanner input = new Scanner (System.in);
        //int in = input.nextInt();
        Player ai = new Player();         
        while(true){
            switch(input.nextInt()){                
                case 1: TrainingDummy trndum1 = new TrainingDummy();
                        ai.setTarget(trndum1);
                    break;
                case 2: Monster mon1 = new Monster();
                        ai.setTarget(mon1);
                    break;
                case 3: System.out.println("You have quite.");
                    break;
                default: System.out.println("Whoops, sorry wrong input...");
            }
            System.out.println("1 to attack, 2 to heal and 3 to run away.");
            while(ai.hasTarget()){              
                switch(input.nextInt()){
                    case 1:  ai.playerAttack();
                        if(ai.isDead()){
                            System.out.println("OOffff you're dead. Maybe next time!");
                            return;
                        }
                        break;
                    case 2: ai.heal();
                        if(ai.isDead()){
                            System.out.println("OOffff you're dead. Maybe next time!");
                            return;
                        }
                        break;
                    case 3: ai.runAway();
                        if(ai.isDead()){
                            System.out.println("OOffff you're dead. Maybe next time!");
                            return; 
                        }
                            System.out.println("You were able to run away, wow you're quick!");
                        break;
                    default:
                        System.out.println("Whoops, sorry wrong input...");                
                }
            }
        }
    }
}
