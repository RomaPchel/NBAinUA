package ua.pchel.nbainua.models;

import ua.pchel.nbainua.hibernate.models.Team;

import java.util.Date;

public class Game {
    private Team firstTeam;
    private Team secondTeam;
    private String time;
    private String location;

    public Game(Team firstTeam, Team secondTeam, String time, String location) {
        this.firstTeam = firstTeam;
        this.secondTeam = secondTeam;
        this.time = time;
        this.location = location;
    }



    public Team getFirstTeam() {
        return firstTeam;
    }

    public void setFirstTeam(Team firstTeam) {
        this.firstTeam = firstTeam;
    }

    public Team getSecondTeam() {
        return secondTeam;
    }

    public void setSecondTeam(Team secondTeam) {
        this.secondTeam = secondTeam;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }
}
