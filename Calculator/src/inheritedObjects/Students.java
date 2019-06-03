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
public class Students {
    private String name, surname, house;
    public Students(String name, String surname, String house){
        this.name = name;
        this.surname = surname;
        this.house = house;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getSurname() {
        return surname;
    }
    public void setSurname(String surname) {
        this.surname = surname;
    }
    public String getHouse() {
        return house;
    }
    public void setHouse(String house) {
        this.house = house;
    }  
    public String toString(){
        return getName() + ", " + getSurname() + ", " + getHouse();
    }
}
