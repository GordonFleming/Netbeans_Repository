package Martial_Combat;

/**
 *
 * @author Gordon Fleming (24740)
 */
public class Player extends Monster{
    private TrainingDummy curTar;
    private boolean dead;
    
    public Player(){
        dead = false;
    }
    public void setTarget(TrainingDummy trndum){
        curTar = trndum;
    }
    public void playerAttack(){
        if(this.makeAttack(curTar)){
            curTar = null;
        }else{
            if(curTar.getClass().equals(Monster.class)){
             ((Monster) curTar).makeAttack(this);
                if(health<0){
                    dead = true;
                }
            }
        }
    }
    public void heal(){
        int hpBoost = (int)(Math.random() * 5 + 1);
        health += hpBoost;
        System.out.println("Healed by " + hpBoost + "hp" + " and current health of " + getClass().getSimpleName() + " is " + health);
        if(curTar.getClass().getSimpleName().equals("Monster")){
            this.receiveAttack(curTar.getAttackRating());
            if(health<0)
                dead = true;
        }
    }
    public boolean isDead(){
        return dead;
    }
    public void runAway(){
        if(curTar.getClass().getSimpleName().equals("Monster")){
            this.receiveAttack(curTar.getAttackRating());
            if(health<0){
                dead = true;
            }
        }
        curTar = null;
    }
   public boolean hasTarget(){
       if(curTar == null){
           return false;
       }else
           return true;
   } 
}
