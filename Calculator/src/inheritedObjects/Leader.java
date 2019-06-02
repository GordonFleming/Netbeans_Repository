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
    private int position;
    public Leader(String name, String surname, String house) {
        super(name, surname, house);
    }  
    public int getPosition() {
        return position;
    }
    public void setPosition(int position) {
        this.position = position;
    }      
    @Override
    public String toString(){
      return getName() + " " + getSurname() + " " + getHouse() + " " + getPosition();  
    }
}
