/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CrossCountry;

/**
 *
 * @author gordonfleming
 */
public class LegTime {
    private String start;
    private String end;
    public LegTime(String start, String end){
        this.start = start;
        this.end = end;
    }
    public String getStart() {
        return start;
    }
    public void setStart(String start) {
        this.start = start;
    }
    public String getEnd() {
        return end;
    }
    public void setEnd(String end) {
        this.end = end;
    }
    private int strTolntTime(String s){
        String hr = s.substring(0,2);
        String min = s.substring(3,5);
        String sec = s.substring(6,8);
        int hour = Integer.parseInt(hr)*3600;
        int minute = Integer.parseInt(min)*60;
        int second = Integer.parseInt(sec);
        int Total = hour+minute+second;
        return Total;
    }
    
    public int getLegTimeInSeconds(){
        return strTolntTime(end)-strTolntTime(start);
    }
    @Override
    public String toString(){
        return "Start Time: "+start+"\tEnd Time: "+end+"\tTotal time in seconds: "+getLegTimeInSeconds()+"s";
    }
}
