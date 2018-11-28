/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package memo;

/**
 *
 * @author delia
 */
//2.1 [4]
public class Card {
    private String name;
    private int health, magic;
    private String inventory;

//2.2 [3]
    public Card(String name, int health, int magic, String inventory) {
        this.name = name;
        this.health = health;
        this.magic = magic;
        this.inventory = inventory;
    }
//2.3 [8]   
    public Card(String n)
    {
        name = n;
        health = (int) (Math.random()*41) + 10;
        magic = (int) (Math.random()*21) + 20;
        String [] swordArr = {"gold","silver","bronze","wood","straw"};
        String [] healArr = {"wand","bandage","ointment"};
        String [] magicArr = {"potion","chant","lamp"};
        String temp = swordArr[(int) (Math.random()*5)] + ",";
        temp += healArr[(int) (Math.random()*3)] + ",";
        temp += magicArr[(int) (Math.random()*3)];
        inventory = temp;
    }
    
//2.4 [2]
    public String getName() {
        return name;
    }

    public int getHealth() {
        return health;
    }

    public int getMagic() {
        return magic;
    }

//2.5 [5]  
    public void changeSword(String s) {        
        String temp = inventory; 
        int p = inventory.indexOf(",");        
        temp = s + temp.substring(p);
        inventory = temp;
    }

//2.6 [4]    
    public void upDateCard(int h, int m, String sword) {
        health +=  h;
        magic += m;
        changeSword(sword);
    }  

//2.7 [5]
    @Override
    public String toString() {
        return name + "\t" + health + "\t" + magic + "\nInventory: " + inventory;
    }
    
    
}
