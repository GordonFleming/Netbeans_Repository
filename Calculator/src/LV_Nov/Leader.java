/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package LV_Nov;

/**
 *
 * @author gordonfleming
 */
public class Leader {
    private String name;
    private int staffRating;
    private int gr11Rating;
    private int gr10Rating;
    private int campRating;
    public Leader(String name, int staffRating, int gr11Rating, int gr10Rating, int campRating){
        this.name = name;
        this.campRating = campRating;
        this.gr10Rating = gr10Rating;
        this.gr11Rating = gr11Rating;
        this.staffRating = staffRating;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public int getStaffRating() {
        return staffRating;
    }
    public void setStaffRating(int staffRating) {
        this.staffRating = staffRating;
    }
    public int getGr11Rating() {
        return gr11Rating;
    }
    public void setGr11Rating(int gr11Rating) {
        this.gr11Rating = gr11Rating;
    }
    public int getGr10Rating() {
        return gr10Rating;
    }
    public void setGr10Rating(int gr10Rating) {
        this.gr10Rating = gr10Rating;
    }
    public int getCampRating() {
        return campRating;
    }
    public void setCampRating(int campRating) {
        this.campRating = campRating;
    }
    public int getPoints(){
        int temp = getStaffRating()*3 + getCampRating()*4 + getGr10Rating() + getGr11Rating()*2;
        return temp;
    }
    public void removeVowels(){
        String temp = "" + name.charAt(0);
        String vowels = "aeiouAEIOU";
        for(int i = 1; i<name.length();i++){
            if(vowels.indexOf(name.charAt(i))<0){
                temp+= name.charAt(i);
            }
        }
        name = temp;
    }
    public boolean LessThan3(){
        boolean temp;
        temp = !(getCampRating()>3 || getStaffRating() > 3 || getGr10Rating() > 3 || getGr11Rating() >3);
        return temp;
    }
    @Override
    public String toString(){
        return getName() + "\t" + getStaffRating() + "\t" + getGr11Rating() + "\t" + getGr10Rating() + "\t" 
                + getCampRating() + "\t" + getPoints(); 
    }
}