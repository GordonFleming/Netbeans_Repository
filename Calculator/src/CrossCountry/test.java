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
public class test {
    public static void main(String[] args) {
        String time = "17:53:16";
        String h = time.substring(0,2);
        String m = time.substring(3,5);
        String s = time.substring(6,8);
        int hour = Integer.parseInt(h)*3600;
        int minute = Integer.parseInt(m)*60;
        int second = Integer.parseInt(s);
        System.out.println(hour+minute+second);
    }
}
