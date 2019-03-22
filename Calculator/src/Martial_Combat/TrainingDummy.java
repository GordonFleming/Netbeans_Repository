package Martial_Combat;

/**
 *
 * @author Gordon Fleming (24740)
 */
public class TrainingDummy {
    private int attackRating;
    private int defenseRating;
    
    public TrainingDummy(){
        attackRating = (int)(Math.random() * 11 + 5);
        defenseRating = (int)(Math.random()* 5 + 1);
        System.out.println(getClass().getSimpleName() + " created with " + attackRating + " attack and " + defenseRating + " defense.");
    }
    public boolean receiveAttack(int attackStrength){
        if(getAttackRating()>getDefenseRating()){
            System.out.println("Ouch! That hurt!");
        }else
            System.out.println("Tis barely a scratch!");
        return false;
    }
    public int getAttackRating() {
        return attackRating;
    }
    public int getDefenseRating() {
        return defenseRating;
    }
   
}
