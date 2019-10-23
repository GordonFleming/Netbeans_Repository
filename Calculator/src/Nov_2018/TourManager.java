/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Nov_2018;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

/**
 *
 * @author flemi
 */
public class TourManager {
    Stop arr[] = new Stop[100];
    int count = 0;
    
    public TourManager(String file){
        try{
        Scanner scFile = new Scanner(new File(file));
        String line;
        String sN,rC;
        int sT;
        while(scFile.hasNext()){
            line = scFile.nextLine();
            Scanner sc = new Scanner (line).useDelimiter(",");
            sN = sc.next();
            rC = sc.next();
            sT = sc.nextInt();
            arr[count] = new Stop(sN,rC,sT);
            count++;
            sc.close();
            }
        scFile.close();
        }catch(FileNotFoundException ex){
                System.out.println("File name not entered correctly");
        }
    }
    public Route getRouteWithCode(char routeCode,boolean isCircular){
        Route r = new Route(routeCode,isCircular);
        int size = 0;
        for(int i =0; i<count;i++){
            if(arr[i].isPartOfRoute(routeCode)){
                size++;
            }
        }
        Stop array[] = new Stop[count];
        size =0;
        for(int i=0;i<count;i++){
            if(arr[i].isPartOfRoute(routeCode)){
                array[size] = arr [i];
                size++;
            }
        }
        r.setStops(array);
        return r;
    }
}
