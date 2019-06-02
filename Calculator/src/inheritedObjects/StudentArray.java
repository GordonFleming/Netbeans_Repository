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
public class StudentArray {
    private Leader [] lead = new Leader [100];
    private int size = 0;
    private String FileName = "students.txt";
    public StudentArray(){
        
    }
    public void populateArray(){
        size ++;
    }
    public String displayArray(){
        return "";
    }
    public void sortArray(){
        
    }
}
