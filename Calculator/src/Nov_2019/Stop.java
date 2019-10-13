/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Nov_2019;

/**
 *
 * @author flemi
 */
public class Stop {
    private String stopName;
    private String routeCodes;
    private int stopType;
    public static final int STOPTYPE_CAFE = 1;
    public static final int STOPTYPE_SHELTER = 2;
    public static final int STOPTYPE_EXPRESS = 3;
    public static final int STOPTYPE_OTHER = 4;
    
    public Stop(String stopName,String routeCodes,int stopType){
        this.stopName=stopName;
        this.routeCodes=routeCodes;
        if(stopType==STOPTYPE_CAFE || stopType==STOPTYPE_SHELTER || stopType==STOPTYPE_EXPRESS){
            this.stopType=stopType;
        }else
            this.stopType=STOPTYPE_OTHER;      
    }
    public String getStopTypeName(){
        switch(stopType){
            case STOPTYPE_CAFE: return "cafe";
            case STOPTYPE_SHELTER: return "Shelter";
            case STOPTYPE_EXPRESS: return "Express";
            default: return "Other";
        }
    }
    public boolean isPartOfRoute(char c){
        if(routeCodes.contains(""+c)){
            return true;
        }else
        return false;
    }
    public String toString(){
        return getStopTypeName() + "\t" + stopName;
    }
}
