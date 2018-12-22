/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tickettoride;

/**
 *
 * @author gordonfleming
 */
public class TicketToRidePlayer {
    
    private String team; 
    private String longestYorN; 
    private int players; 
    private int Prescore; 
    private int tunnels; 
    
    //private int longest;
    private int Postscore;
    private int stationPen;
    private int longestTorF;
    
    public TicketToRidePlayer(int players,String team, int Prescore, int Postscore, int tunnels, String longestYorN, int longestTorF, int stationPen){
        this.players = players;
        this.team = team;
        this.Prescore = Prescore;
        this.Postscore = Postscore;
        this.longestYorN = longestYorN;
        this.tunnels = tunnels;
        this.longestTorF = longestTorF;
        this.stationPen = stationPen;
    }

    public String getTeam() {
        return team;
    }
    public void setTeam(String aTeam) {
        team = aTeam;
    }

    public String getLongestYorN() {
        return longestYorN;
    }
    public void setLongestYorN(String aLongestYorN) {
        longestYorN = aLongestYorN;
    }

    public int getPlayers() {
        return players;
    }
    public void setPlayers(int aPlayers) {
        players = aPlayers;
    }

    public int getPrescore() {
        return Prescore;
    }
    public void setPrescore(int aPrescore) {
        Prescore = aPrescore;
    }

    public int getTunnels() {
        return tunnels;
    }
    public void setTunnels(int aTunnels) {
        tunnels = aTunnels;
    }

    public int getPostscore() {
        return Postscore;
    }
    public void setPostscore(int aPostscore) {
        Postscore = aPostscore;
    }   

    public int getStationPen() {
        return stationPen;
    }
    public void setStationPen(int stationPen) {
        this.stationPen = stationPen;
    }
    
    public int getLongestTorF() {
        return longestTorF;
    }
    public void setLongestTorF(int longestTorF) {
        this.longestTorF = longestTorF;
    }
    
    @Override
    public String toString(){
        return "\t"+ getPlayers() +"\t\t|\t"+ getTeam()  + "\t\t|\t\t"+ getTunnels() +"\t\t|\t"+ getLongestYorN() +"\t\t|\t\t"+ getPrescore() +"\t\t|\t"+ getPostscore()+"+"+getLongestTorF()+"+"+getStationPen()+"  = "+ (getPostscore()+getLongestTorF()+getStationPen());                
    }
}
