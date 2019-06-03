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
public class SchoolApp {
    public static void main(String[] args) {
        StudentArray student = new StudentArray("students.txt");
        System.out.println("\nSorted Array:\n");
        student.sortArray(true);
        student.displayArray();
    }
}
