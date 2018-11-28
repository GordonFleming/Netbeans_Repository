/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gr11nov2017;

/**
 *
 * @author delia
 */
public class Leader {

    private String name;
    private int staffRate, g10Rate, g11Rate, campRate;

    public Leader(String name, int staffRate, int g10Rate, int g11Rate, int campRate) {
        this.name = name;
        this.staffRate = staffRate;
        this.g10Rate = g10Rate;
        this.g11Rate = g11Rate;
        this.campRate = campRate;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getStaffRate() {
        return staffRate;
    }

    public void setStaffRate(int staffRate) {
        this.staffRate = staffRate;
    }

    public int getG10Rate() {
        return g10Rate;
    }

    public void setG10Rate(int g10Rate) {
        this.g10Rate = g10Rate;
    }

    public int getG11Rate() {
        return g11Rate;
    }

    public void setG11Rate(int g11Rate) {
        this.g11Rate = g11Rate;
    }

    public int getCampRate() {
        return campRate;
    }

    public void setCampRate(int campRate) {
        this.campRate = campRate;
    }

    public int getPoints() {
        int temp = 3 * staffRate + 2 * g11Rate + g10Rate + 4 * campRate;
        return temp;
    }

    public void removeVowels() {
        String temp = "" + name.charAt(0);
        final String VOWELS = "aeiouAEIOU";
        for (int i = 1; i < name.length(); i++) {
            if (VOWELS.indexOf(name.charAt(i)) < 0) {
                temp = temp + name.charAt(i);
            }

        }
        name = temp;
    }

    public boolean lessThan1() {
        boolean temp = staffRate < 3 | g11Rate < 3 | g10Rate < 3 | campRate < 3;
        return temp;
    }

    @Override
    public String toString() {
        return name + "\t" + staffRate + "\t" + g10Rate + "\t" + g11Rate + "\t" + campRate + "\t" + getPoints();
    }

}
