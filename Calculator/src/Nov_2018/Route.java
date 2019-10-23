/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Nov_2018;

/**
 *
 * @author flemi
 */
public class Route {
    private char routeCode;
    private boolean isCircular;
    private Stop[] stops;
    
    public Route(char routeCode, boolean isCircular){
        this.routeCode=routeCode;
        this.isCircular=isCircular;
    }
    public char getRouteCode() {
        return routeCode;
    }
    public void setStops(Stop[] stops) {
        this.stops = stops;
    }
    public Stop getStopAt(int num){
        if(num>=0 && num<stops.length){
            return stops[num];
        }else
            return null;
    }
    public String toString(){
        String temp = routeCode + " - ";
        if(stops.length==0){
            temp+="invalid";
        }else if(isCircular){
            temp+="Circular";
        }else{
            temp+="Linear";
        }
        for(int i =0;i<stops.length;i++){
            temp+= "\n-> " + (i+1) + "\t" + stops[i];
        }
        if(isCircular){
            temp+= "\n-> 1\t" + stops[0];
        }else
            for(int i = stops.length-2; i>=0; i--){
                temp+= "\n-> " + (i+1) + "\t" + stops[i];
        }
        return temp;
    }
}
