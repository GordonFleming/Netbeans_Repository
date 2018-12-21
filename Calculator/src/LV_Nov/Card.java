/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package LV_Nov;

/**
 *
 * @author gordonfleming
 */
public class Card {
    private String name;
    private int health, magic;
    private String Inventory;
    public Card(String name, int health, int magic, String Inventory){
        this.name = name;
        this.health = health;
        this.magic = magic;
        this.Inventory = Inventory;
    }
    public Card (String n){
        name = n;
        health = (int) (Math.random()*41)+10;
        magic = (int) (Math.random()*21)+20;
        String swordArr [] = {"gold","silver","bronze","straw"};
        String healingArr [] = {"wand","bandage","ointment"};
        String magicArr [] = {"potion","chant","lamp"};
        String temp = swordArr[(int)(Math.random()*5)]+", ";
        temp += healingArr [(int)(Math.random()*4)]+", ";
        temp += magicArr [(int)(Math.random()*4)];
        Inventory = temp;
    }
    public String getName() {
        return name;
    }
    public int getHealth() {
        return health;
    }
    public int getMagic() {
        return magic;
    }
    public void ChangeSword(String s){
        String temp = getInventory();
        int p = getInventory().indexOf(",");
        temp = s + temp.substring(p);
        Inventory = temp;
    }
    public void updateCard(int h,int m, String Sword){
        health +=  h; 
        magic += m; 
        ChangeSword(Sword);
    }
    @Override
    public String toString(){
      return getName() + "\t" + getHealth() + "\t" + getMagic() + "\nInventory: " + getInventory();  
    }

    /**
     * @return the Inventory
     */
    public String getInventory() {
        return Inventory;
    }
}