package Martial_Combat;

/**
 *
 * @author Gordon Fleming (24740)
 */
public class Monster extends TrainingDummy{
    int health;
    
    public Monster(){
        health = (int)(Math.random() * 21 + 20);
        System.out.println("Health: " + health);
    }
    @Override
    public boolean receiveAttack(int attackStrength){
        if(attackStrength>this.getDefenseRating()){
            int loss = this.getDefenseRating()-attackStrength;
            health = getHealth() - loss;
            System.out.println(getClass().getSimpleName() + " was damaged for " + loss + " health. Current health " + getHealth());
            if(getHealth()>0){
                System.out.println(getClass().getSimpleName() + " current health is now " + getHealth());
                return false;
            }else{
                System.out.println(getClass().getSimpleName() + " is now dead...");
                return true; 
            }
        }else{
                System.out.println("Tis barely a scratch!");
                return false;
        }
    }
    public boolean makeAttack(TrainingDummy trndum){
        return trndum.receiveAttack(this.getAttackRating());
    }
    public int getHealth() {
        return health;
    }  
    @Override
    public String toString(){
        return getClass().getSimpleName() + " has stats of " + this.getAttackRating() + " attack " + this.getDefenseRating() + " defense and " + health + " health.";
    }
}
