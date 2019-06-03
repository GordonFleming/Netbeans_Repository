/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package inheritedObjects;

import LV_Nov.Card;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

/**
 *
 * @author gordonfleming
 */
public class StudentArray {
    private Students [] stu = new Students [100];
    private int size = 0;
    public StudentArray(String filename){
        populateArray(filename);
    }
    public void populateArray(String filename){
        try{
            try (Scanner scFile = new Scanner (new File(filename))) {
                String line,n,s,h,p;
                while(scFile.hasNext()){
                    line = scFile.nextLine();
                    int sum = 0;
                    System.out.println(line);
                    Scanner sc = new Scanner(line).useDelimiter(",");
                    for(int i = 0; i<line.length(); i++){
                        if(line.charAt(i)==','){
                            sum++;
                        }
                    }
                    if(sum == 2){
                        s = sc.next();
                        n = sc.next();
                        h = sc.next();
                        sc.close();
                        stu[size] = new Students (s,n,h);
                    }else if(sum == 3){
                        s = sc.next();
                        n = sc.next();
                        h = sc.next();
                        p = sc.next();
                        sc.close();
                        stu[size] = new Leader (s,n,h,p);
                    }
                    size++;
                }
            }
        }catch (FileNotFoundException ex){
            System.out.println("Check the file path, maybe you entered it wrong.");
        }
    }
    public void sortArray(boolean sort){
        Students temp;
        if(sort == false){
            for(int i = 0; i < size-1; i++){
                for(int j = i+1;j<size; j++){
                    if(stu[i].getSurname().compareTo(stu[j].getSurname())>0){
                        temp = stu[i];
                        stu[i] = stu[j];
                        stu[j] = temp;
                    }
                }
            }
        }else if(sort == true){
            for(int i = 0; i < size-1; i++){
                for(int j = i+1;j<size; j++){
                    if((stu[i].getHouse()+stu[i].getSurname()).compareTo((stu[j].getHouse()+stu[j].getSurname()))>0){
                        temp = stu[i];
                        stu[i] = stu[j];
                        stu[j] = temp;
                    }
                }
            }  
        }
    }
    public void displayArray(){
        String temp = "";
        for(int i = 0;i<size-1;i++){
            temp = temp + stu[i] + "\n";
        } 
        System.out.println(temp);
    }
}
