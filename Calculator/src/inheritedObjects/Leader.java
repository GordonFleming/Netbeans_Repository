/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package inheritedObjects;

/**
 *
 * @author gordonfleming
 */
public class Leader extends Students{    
    private String position;
    public Leader(String name, String surname, String house, String position) {
        super(name, surname, house);
        this.position = position;     
    }  
    public String getPosition() {
        return position;
    }
    public void setPosition(String position) {
        this.position = position;
    }       
    @Override
    public String toString(){
      return super.toString() + ", " + getPosition();  
    }
}
