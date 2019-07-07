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
public class Competitor {
    private String name;
    private int id;
    private LegTime [] lArr = new LegTime[4];
    public Competitor(int id,String name){
        this.id = id;
        this.name = name;
    }
    public String getName() {
        return name;
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public void setLegTimes(int pos,String s,String e){
        lArr[pos] = new LegTime(s,e);
    }
    @Override
    public String toString(){
        String temp = "";
        temp += "Competitor ID: " + getId()+ ", Name: "+name+ " Result Summary:\n";
                for(int i = 0;i<lArr.length;i++){                        
                if(lArr[i]==null){
                    temp+="Leg "+(i+1)+": *** Not Completed ***\n";
                }else
                    temp+="Leg "+(i+1)+": "+lArr[i]+"\n";
            }
                return temp;
    }
}
